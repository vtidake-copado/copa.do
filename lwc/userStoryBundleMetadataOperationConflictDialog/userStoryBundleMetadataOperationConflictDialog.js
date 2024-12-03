import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { getSortedData } from 'c/datatableService';

import deleteUserStoriesFromBundle from '@salesforce/apex/LockBundleCtrl.deleteUserStoriesFromBundle';

import { icons, labels, COLUMNS } from './constants';
import { reduceErrors, namespace } from 'c/copadocoreUtils';
import { showToastError } from 'c/copadocoreToastNotification';

export default class UserStoryBundleMetadataOperationConflictDialog extends NavigationMixin(LightningElement) {
    @api packageVersionId;
    @api
    set userStoryMetadatasWithConflict(value) {
        this._userStoryMetadatasWithConflict = [...value];
    }

    get userStoryMetadatasWithConflict() {
        return this._userStoryMetadatasWithConflict;
    }

    @api
    displaySpinner(value) {
        this.showSpinner = value;
    }

    showSpinner = false;
    icons = icons;
    labels = labels;
    columns = COLUMNS;
    sortDirection = 'asc';
    sortedBy;

    _selectedRows = [];
    _userStoriesRemovedFromBundle = [];
    _userStoryMetadatasWithConflict = [];

    get hasConflictingUserStoryMetadatas() {
        return this.userStoryMetadatasWithConflict?.length ? true : false;
    }

    get disableRemoveSelected() {
        return this._selectedRows?.length ? false : true;
    }

    get spinnerMessage() {
        return labels.REMOVING_USER_STORIES;
    }

    get showInfo() {
        return this._userStoriesRemovedFromBundle?.length > 0 ? true : false;
    }

    get infoMessage() {
        return labels.USER_STORIES_REMOVED_FROM_BUNDLE_INFO_MESSAGE;
    }

    handleRowSelection(event) {
        try {
            this._selectedRows = event.detail.selectedRows;
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    async handleRemoveSelectedFromBundle() {
        try {
            this._userStoriesRemovedFromBundle = [];
            this.showSpinner = true;
            const userStoryIdsToBeDeleted = this._getUserStoryIdsToBeDeletedFromBundle(this._selectedRows);
            await deleteUserStoriesFromBundle({ userStoryIds: userStoryIdsToBeDeleted, packageVersionId: this.packageVersionId });
            this._userStoriesRemovedFromBundle = userStoryIdsToBeDeleted;
            this._selectedRows = [];
            this.dispatchEvent(new CustomEvent('deletefrombundledstory'));
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
            this.showSpinner = false;
        }
    }

    handleNextClick() {
        try {
            this.dispatchEvent(new CustomEvent('nextclick'));
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    handleCloseClick() {
        try {
            this.dispatchEvent(new CustomEvent('closeclick'));
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    handleSort(event) {
        this.sortDirection = event.detail.sortDirection;
        this.sortedBy = event.detail.fieldName;
        this._sortRows(this.userStoryMetadatasWithConflict);
    }

    _sortRows(rows) {
        this._userStoryMetadatasWithConflict =
            rows?.length && this.columns?.length && this.sortedBy && this.sortDirection
                ? getSortedData(this.columns, rows, { name: this.sortedBy, sortDirection: this.sortDirection })
                : rows;
    }

    _getUserStoryIdsToBeDeletedFromBundle(selectedRows) {
        const result = new Set();
        selectedRows?.forEach(selectedRow => {
            result.add(selectedRow[`${namespace}User_Story__c`]);
        });
        return [...result];
    }
}