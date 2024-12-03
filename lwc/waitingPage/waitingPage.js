import { LightningElement, api, track } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

import getFieldsFromFieldSet from '@salesforce/apex/LockBundleCtrl.getFieldsFromFieldSet';
import startActionFlow from '@salesforce/apex/PerformUserStoryAction.startActionFlow';
import fetchCommits from '@salesforce/apex/PerformUserStoryAction.fetchCommits';
import getCopadoNotification from '@salesforce/apex/PerformUserStoryAction.getCopadoNotification';

import { schema, constants } from './constants';

export default class WaitingPage extends NavigationMixin(LightningElement) {
    @api storyId;
    @api actionIds;
    @api snapshotId;
    @api actionType;

    @track updates = [];
    @track previousUpdates = [];

    schema = schema;
    constants = constants;

    fields = [];
    showSpinner = true;
    submitError = {
        isError: false,
        message: ''
    };

    _counter = 0;
    _commits = [];
    _sortedCommits = [];

    _intervalId;
    _pollingInterval = 5000;

    _operationsOrder = [constants.COMMIT_FILES, constants.FULL_PROFILES_PERMISSION_SETS, constants.DESTRUCTIVE_CHANGES];

    async connectedCallback() {
        try {
            await this._fetchDisplayFields();
            await this._commit();
            this.startPolling();
        } catch (err) {
            this.submitError = {
                isError: true,
                message: err.body.message
            };
        }
    }

    disconnectedCallback() {
        this.stopPolling();
    }

    startPolling() {
        // eslint-disable-next-line @lwc/lwc/no-async-operation
        this._intervalId = setInterval(() => {
            this._trackCopadoNotifications();
        }, this._pollingInterval);
    }

    stopPolling() {
        if (this._intervalId) {
            clearInterval(this._intervalId);
            this._intervalId = undefined;
        }
    }

    async _trackCopadoNotifications() {
        const notification = await getCopadoNotification({
            snapshotId: this.snapshotId
        });

        if (notification) {
            if (notification[schema.IS_FINISHED_FIELD]) {
                this._addLastUpdate(notification);
            } else {
                const notificationAlreadyConsidered = this.updates.some((update) => update.message === notification[schema.STATUS_FIELD]);
                if (!notificationAlreadyConsidered) {
                    this._addUpdate(notification);
                }
            }

            let rightPanelHeight = this.template.querySelector('.right-panel').scrollHeight;
            this.template.querySelector('.right-panel').scrollTop = rightPanelHeight;
        }
    }

    navigateToRecordViewPage() {
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: this.storyId,
                actionName: 'view'
            }
        });
    }

    async _fetchDisplayFields() {
        this.fields = await getFieldsFromFieldSet({
            objectName: schema.USER_STORY_OBJECT,
            fieldSet: constants.FIELDSET
        });
    }

    async _commit() {
        this._commits = await fetchCommits({
            ids: this.actionIds
        });

        // Note: Sorting commits as per the Operation Order
        this._commits.forEach((commit) => {
            const operationIndex = this._operationsOrder.indexOf(commit[schema.GIT_OPERATION_FIELD]);
            this._sortedCommits[operationIndex] = commit.Id;
        });
        this._sortedCommits = this._sortedCommits.filter((commit) => commit != null);

        await startActionFlow({
            storyId: this.storyId,
            actionIds: this._sortedCommits,
            snapshotId: this.snapshotId,
            actionType: this.actionType
        });
    }

    _addUpdate(notification) {
        if (this.updates.length) {
            this.updates[this.updates.length - 1].icon = constants.CHECK_ICON;
        } else {
            this.showSpinner = false;
            this._addSeperator(constants.START_ICON, constants.STARTED, this._counter + 1);
        }

        this.updates.push({ message: notification[schema.STATUS_FIELD] });
    }

    _addLastUpdate(notification) {
        this._counter += 1;
        let icon = constants.CHECK_ICON;

        if (notification[schema.IS_SUCCESS_FIELD]) {
            this.showSpinner = true;

            if (this.actionIds.length === this._counter) {
                this.showSpinner = false;
                this.stopPolling();
                // eslint-disable-next-line @lwc/lwc/no-async-operation
                setTimeout(() => {
                    this.navigateToRecordViewPage();
                }, 6000);
            }
        } else {
            icon = constants.WARNING_ICON;
            this.stopPolling();
        }

        if (this.updates.length) {
            this.updates[this.updates.length - 1].icon = icon;
        }
        this.updates.push({ icon: icon, message: notification[schema.STATUS_FIELD] });
        this._refreshUpdates();
    }

    _refreshUpdates() {
        this._addSeperator(constants.FINISHED_ICON, constants.COMPLETED, this._counter);
        this.previousUpdates = this.previousUpdates.concat(this.updates);
        this.updates = [];
    }

    _addSeperator(icon, message, counter) {
        let currentCommit = this._commits.find((commit) => commit.Id === this._sortedCommits[counter - 1]);
        this.updates.push({ icon: icon, message: currentCommit[schema.GIT_OPERATION_FIELD] + ' ' + message });
    }
}