import { LightningElement, api, track, wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';

import { reduceErrors } from 'c/copadocoreUtils';
import { showToastError, showToastSuccess } from 'c/copadocoreToastNotification';
import { loadMoreData } from 'c/datatableService';

import validateGitConnection from '@salesforce/apex/GitRepositoryController.validateGitConnection';
import refreshBranches from '@salesforce/apex/GitRepoController.refreshBranches';
import fetchBranches from '@salesforce/apex/GitRepoController.fetchBranches';
import deleteGitBranches from '@salesforce/apex/GitRepoController.areGitBranchesDeleted';
import createCopadoNotificationPushTopic from '@salesforce/apex/GitRepoController.createCopadoNotificationPushTopic';
import getCopadoNotification from '@salesforce/apex/GitRepoController.getCopadoNotification';

import { label, schema, columns } from './constants';

export default class GitRepositoryBranches extends LightningElement {
    @api recordId;

    @track filteredData = [];
    @track data = [];

    iconName = 'standard:branch_merge';
    columns = columns;
    schema = schema;
    label = label;

    showSearch = false;
    showRowActions = false;
    showFilter = false;
    isLoading = false;

    sortedBy;
    showRefresh;
    showDeleteBranches;

    spinnerMessage = '';
    searchValue = '';
    sortDirection = 'asc';

    _gitRepository;
    _gitRepositoryId;
    _gitRepositoryBranchBaseURL;
    _refreshBranchesInitiated;
    _deleteBranchesInitiated;

    _jobId; // track job id as it's not linked to parent
    POLLING_INTERVAL = 5000; // 5 seconds interval
    _pollingTimer;
    _currentOperation;

    get rowsCount() {
        return this.filteredData && this.filteredData.length ? this.filteredData.length : '0';
    }

    get items() {
        return this.hasData ? this.rowsCount + ' ' + label.ITEMS : '';
    }

    get hasData() {
        return this.data && this.data.length ? true : false;
    }

    get tableHeight() {
        return this.filteredData.length >= 20 ? 'height: 25rem' : '';
    }

    get hasNoData() {
        return this.filteredData.length <= 0 && !this.isLoading ? true : false;
    }

    //WIRE
    @wire(getRecord, { recordId: '$recordId', fields: [schema.NAME_FIELD, schema.BRANCH_BASE_URL_FIELD] })
    wiredRecord({ error, data }) {
        if (data) {
            this._gitRepository = data;
            this._gitRepositoryId = data.id;
            this._gitRepositoryBranchBaseURL = getFieldValue(data, schema.BRANCH_BASE_URL_FIELD);
        } else if (error) {
            showToastError(this, { message: reduceErrors(error) });
        }
    }

    async connectedCallback() {
        this.isLoading = true;
        await this.isAuthenticated();
    }

    disconnectedCallback() {
        this._stopPolling();
    }

    //PUBLIC

    async handleRefreshBranches() {
        try {
            this.isLoading = true;
            this._refreshBranchesInitiated = true;
            this._currentOperation = 'DxListRepositoryBranches';
            this.setSpinnerMessage(label.REFRESHING_BRANCHES_MESSAGE);
            await this._createCopadoNotificationPushTopic();

            this._jobId = await refreshBranches({ repoId: this.recordId });
            this._startPolling();
        } catch (error) {
            this._handleOperationError(error);
        }
    }

    async handleDeleteBranches() {
        const deletedBranches = {
            gitBranches: []
        };
        try {
            this.isLoading = true;
            this._deleteBranchesInitiated = true;
            this._currentOperation = 'GitDeleteBranches';
            this.setSpinnerMessage(label.DELETING_BRANCHES_MESSAGE);

            const selectedRecords = this.template.querySelector('lightning-datatable').getSelectedRows();

            if (selectedRecords.length > 0) {
                await this._createCopadoNotificationPushTopic();
                selectedRecords.forEach((record) => {
                    deletedBranches.gitBranches.push(record.name);
                });
                await this._executeDeleteBranches(deletedBranches);
                this._startPolling();
            } else {
                this.isLoading = false;
                showToastError(this, { message: label.SELECT_ATLEAST_ONE_BRANCH });
            }
        } catch (error) {
            this._handleOperationError(error);
        }
    }

    handleSort(event) {
        const { fieldName: sortedBy, sortDirection } = event.detail;
        const cloneData = [...this.filteredData];

        cloneData.sort(this._sortBy(sortedBy, sortDirection === 'asc' ? 1 : -1));
        this.filteredData = cloneData;
        this.sortDirection = sortDirection;
        this.sortedBy = sortedBy;
    }

    handleLoadMoreData(event) {
        this._isLoadingInProgress = true;
        let rows = this.allRows;
        if (this.isSearchInProgress) {
            rows = this.filteredData;
        }
        this._loadMore(event, rows);
    }

    // PRIVATE

    async _createCopadoNotificationPushTopic() {
        try {
            const result = await createCopadoNotificationPushTopic();
            if (!result.isSuccess) {
                this._handleOperationError(result);
            }
        } catch (error) {
            this._handleOperationError(error);
        }
    }

    _startPolling() {
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        this._pollingTimer = setInterval(() => {
            this._checkNotificationStatus();
        }, this.POLLING_INTERVAL);
    }

    _stopPolling() {
        if (this._pollingTimer) {
            clearInterval(this._pollingTimer);
            this._pollingTimer = null;
        }
    }

    async _checkNotificationStatus() {
        try {
            const notification = await getCopadoNotification({
                recordId: this.recordId,
                operation: this._currentOperation,
                jobId: this._jobId
            });

            if (notification) {
                const status = notification[schema.COPADO_NOTIFICATION_STATUS.fieldApiName];
                const isFinished = notification[schema.COPADO_NOTIFICATION_IS_FINISHED.fieldApiName];
                const isSuccess = notification[schema.COPADO_NOTIFICATION_IS_SUCCESS.fieldApiName];

                if (status) {
                    this.setSpinnerMessage(status);
                }

                if (isFinished) {
                    this._handleOperationFinished(isSuccess);
                }
            }
        } catch (error) {
            this._handleOperationError(error);
        }
    }

    _handleOperationFinished(isSuccess) {
        this._stopPolling();
        this.template.querySelector('lightning-datatable').selectedRows = [];
        this.isLoading = false;

        if (this._refreshBranchesInitiated) {
            this._fetchBranches();
        }

        if (this._deleteBranchesInitiated) {
            if (isSuccess === false) {
                showToastError(
                    this,
                    this._deleteBranchesInitiated
                        ? { message: label.GIT_BRANCH_DELETE_ERROR_MESSAGE }
                        : { message: label.GIT_BRANCH_REFRESH_ERROR_MESSAGE }
                );
            } else {
                showToastSuccess(
                    this,
                    this._deleteBranchesInitiated
                        ? { message: label.SUCCESS_BRANCH_DELETE_RETRIEVE_MESSAGE.replace('{0}', label.DELETED) }
                        : { message: label.SUCCESS_BRANCH_DELETE_RETRIEVE_MESSAGE.replace('{0}', label.RETRIEVED) }
                );
            }
            this.handleRefreshBranches();
            this._deleteBranchesInitiated = false;
        }
    }

    _handleOperationError(error) {
        this._stopPolling();
        this.isLoading = false;
        showToastError(this, { message: reduceErrors(error) });
        this.setSpinnerMessage(null);
    }

    setSpinnerMessage(spinnerMessage) {
        this.spinnerMessage = spinnerMessage;
    }

    async isAuthenticated() {
        let result;
        validateGitConnection({ repositoryId: this.recordId })
            .then((val) => {
                result = JSON.parse(val);
                if (result.success) {
                    this.handleRefreshBranches();
                    this.showDeleteBranches = true;
                    this.showRefresh = true;
                } else {
                    this.isLoading = false;
                }
            })
            .catch((error) => {
                this.isLoading = false;
                showToastError(this, { message: reduceErrors(error) });
                return false;
            });
        return result;
    }

    async _fetchBranches() {
        try {
            let branchesJSON = await fetchBranches({ repoId: this.recordId });
            this.data = this._convertData(branchesJSON);
            this.filteredData = this.data;
            this._jobId = null;
            this._refreshBranchesInitiated = false;
        } catch (error) {
            this.isLoading = false;
            console.error(error);
        }
    }

    _convertData(branchesJSON) {
        const branchList = [];
        const branches = JSON.parse(branchesJSON);
        branches.forEach((branchJSON) => {
            branchList.push({
                name: branchJSON.name,
                GitDirectory: this._gitRepositoryBranchBaseURL + branchJSON.name,
                LastModifiedDate: this._formatDate(parseInt(branchJSON.lastUpdate, 10))
            });
        });
        return branchList;
    }

    _formatDate(dateValue) {
        let result;

        if (dateValue) {
            result = new Date(dateValue);
        }
        return result != null ? result : '';
    }

    async _executeDeleteBranches(deletedBranches) {
        if (this.recordId && deletedBranches) {
            await deleteGitBranches({ gitRepoId: this.recordId, deleteGitBranches: JSON.stringify(deletedBranches) });
        }
    }

    _sortBy(field, reverse) {
        const key = (columnObject) => {
            return columnObject[field];
        };

        return (currentRowValue, nextRowValue) => {
            currentRowValue = key(currentRowValue) ? key(currentRowValue) : '';
            nextRowValue = key(nextRowValue) ? key(nextRowValue) : '';
            return reverse * ((currentRowValue > nextRowValue) - (nextRowValue > currentRowValue));
        };
    }

    async _loadMore(event, row) {
        try {
            if (!this._isLoadingInProgress) {
                return;
            }
            const configuration = {
                recordsOffset: this._recordsOffset,
                recordSize: this._recordSize
            };
            if (row && this._recordsOffset < row.length) {
                const moreData = await loadMoreData(event, row, configuration);
                if (moreData && moreData.length && this._isLoadingInProgress) {
                    this.data = JSON.parse(JSON.stringify(moreData));
                    this._recordsOffset = this.data.length;
                    this._isLoadingInProgress = false;
                    if (this._recordsOffset === row.length) {
                        this._hasMoreData = false;
                    }
                }
            } else {
                this._hasMoreData = false;
            }
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }
}