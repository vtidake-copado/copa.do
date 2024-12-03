import { LightningElement, wire } from 'lwc';
import { CurrentPageReference, NavigationMixin } from 'lightning/navigation';

import isPlatformBundle from '@salesforce/apex/LockBundleCtrl.isPlatformBundle';
import getConflictingMetadatasFromBundle from '@salesforce/apex/LockBundleCtrl.getConflictingMetadatasFromBundle';

import { labels } from './constants';
import { showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors, namespace } from 'c/copadocoreUtils';

export default class UserStoryMetadataOperationDeleteChecker extends NavigationMixin(LightningElement) {
    labels = labels;
    recordId;
    _userStoryMetadatasWithConflict = [];
    _isPlatformBundle = false;
    isLoading = false;
    _recordUrlByUserStoryId = new Map();

    @wire(CurrentPageReference)
    async getPageReferenceParameters(currentPageReference) {
        if (currentPageReference) {
            this.recordId = currentPageReference.attributes.recordId;
            this._userStoryMetadatasWithConflict = await this._getConflictingUserStoryMetadataForDatatable();
        }
    }

    @wire(isPlatformBundle, { bundleId: '$recordId' })
    isPlatformUserStoryBundle({ data, error }) {
        if (data) {
            this._isPlatformBundle = data;
        } else if (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    get showBanner() {
        return this._isPlatformBundle && this.userStoryMetadatasWithConflict?.length;
    }

    get userStoryMetadatasWithConflict() {
        return this._userStoryMetadatasWithConflict;
    }

    get spinnerMessage() {
        return `${this.labels.LOADING} ${this.labels.USER_STORY_BUNDLE_CONFLICTING_COMPONENTS}`;
    }

    async handleSeeConflicts() {
        try {
            this.isLoading = true;
            this.template?.querySelector('c-copadocore-modal')?.show();
            this._userStoryMetadatasWithConflict = await this._getConflictingUserStoryMetadataForDatatable();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isLoading = false;
        }
    }

    async handleDeletionOfUserStoryFromBundle() {
        try {
            this._userStoryMetadatasWithConflict = await this._getConflictingUserStoryMetadataForDatatable();
            this.template?.querySelector('c-user-story-bundle-metadata-operation-conflict-dialog')?.displaySpinner(false);
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    async _getConflictingUserStoryMetadataForDatatable() {
        const userStoryMetadatasWithConflict = await getConflictingMetadatasFromBundle({ packageVersionId: this.recordId });
        if (userStoryMetadatasWithConflict?.length === 0) {
            return [];
        }
        await this._populateRecordUrlByUserStoryId(userStoryMetadatasWithConflict, this._recordUrlByUserStoryId);

        const promises = [];
        for (const userStoryMetadataWithConflict of userStoryMetadatasWithConflict) {
            userStoryMetadataWithConflict.userStoryName = userStoryMetadataWithConflict[`${namespace}User_Story__r`].Name;
            if (this._recordUrlByUserStoryId.has(userStoryMetadataWithConflict[`${namespace}User_Story__c`])) {
                userStoryMetadataWithConflict.userStoryUrl = this._recordUrlByUserStoryId.get(
                    userStoryMetadataWithConflict[`${namespace}User_Story__c`]
                );
            } else {
                promises.push(this._getRecordUrl(userStoryMetadataWithConflict));
            }
        }
        if (promises?.length) {
            await Promise.all(promises);
        }
        return userStoryMetadatasWithConflict;
    }

    async _populateRecordUrlByUserStoryId(userStoryMetadatasWithConflict, recordUrlByUserStoryId) {
        const userStoryIds = new Set(
            userStoryMetadatasWithConflict?.map(userStoryMetadataWithConflict => userStoryMetadataWithConflict[`${namespace}User_Story__c`])
        );
        const promises = [];
        for (const userStoryId of userStoryIds) {
            promises.push(this._getRecordUrl(userStoryId, recordUrlByUserStoryId));
        }
        if (promises?.length) {
            await Promise.all(promises);
        }
    }

    _getRecordUrl(recordId, recordUrlByUserStoryId) {
        return new Promise((resolve, reject) => {
            this[NavigationMixin.GenerateUrl]({
                type: 'standard__recordPage',
                attributes: {
                    recordId: recordId,
                    actionName: 'view'
                }
            })
                .then(url => {
                    recordUrlByUserStoryId.set(recordId, url);
                    resolve();
                })
                .catch(err => {
                    reject(err);
                });
        });
    }

    handleCancelModal() {
        try {
            this.template?.querySelector('c-copadocore-modal')?.hide();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }
}