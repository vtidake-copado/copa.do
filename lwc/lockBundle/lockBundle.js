import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

import getFieldsFromFieldSet from '@salesforce/apex/LockBundleCtrl.getFieldsFromFieldSet';
import getLockedChildStories from '@salesforce/apex/LockBundleCtrl.getLockedChildStories';
import createPrefilledStory from '@salesforce/apex/LockBundleCtrl.createPrefilledStory';
import lockBundle from '@salesforce/apex/LockBundleCtrl.lockBundle';
import isPlatformBundle from '@salesforce/apex/LockBundleCtrl.isPlatformBundle';
import getConflictingMetadatasFromBundle from '@salesforce/apex/LockBundleCtrl.getConflictingMetadatasFromBundle';

import lockBundleForm from './lockBundle.html';
import userStoryBundleMetadataOperationConflictDialog from './userStoryBundleMetadataOperationConflictDialog.html';

import { reduceErrors, namespace } from 'c/copadocoreUtils';

import { labels, schema } from './constants';

export default class LockBundle extends NavigationMixin(LightningElement) {
    @api recordId;
    @api objectName = schema.ORG_CREDENTIAL.objectApiName;
    @api fieldSet = namespace + 'Bundle';

    isLoading = true;
    error = false;
    submitError = {
        isError: false,
        message: ''
    };
    label = labels;
    displayFields = [];
    isPlatform = false;
    isBundleWithConflict = false;
    userStoryMetadatasWithConflicts;
    isTemplateToRenderChecked = false;

    _recordUrlByUserStoryId = new Map();

    async connectedCallback() {
        this.isPlatform = await isPlatformBundle({ bundleId: this.recordId });
        /*
        A "conflict" occurs when two different User Stories (USs) within the same bundle contain the same User Story metadata, and one of these operations conflicts with a DELETE operation.
         */
        this.userStoryMetadatasWithConflicts = await this._getConflictingUserStoryMetadataForDatatable();

        if (this.isPlatform && this._isBundleWithConflictingMetadatas(this.userStoryMetadatasWithConflicts)) {
            this.isBundleWithConflict = true;
        }
        this.isTemplateToRenderChecked = true;
    }

    render() {
        return this.isBundleWithConflict ? userStoryBundleMetadataOperationConflictDialog : lockBundleForm;
    }

    get showForm() {
        return !this.isBundleWithConflict && this.isTemplateToRenderChecked;
    }

    get isNextDisabled() {
        return this.userStoryMetadatasWithConflicts?.length !== 0;
    }
    async handleOnLoad() {
        if (this.isLoading) {
            try {
                const result = await getLockedChildStories({ version: this.recordId });
                if (result.length) {
                    this.error = this.label.ERROR_ALREADY_LOCKED_STORY + '\n\n' + result.join('\n');
                }
                await this._getDisplayFields();
                await this._generateInputForm();
                this.template.querySelector('.body').classList.remove('slds-hide');
            } catch (e) {
                this.submitError = {
                    isError: true,
                    message: reduceErrors(e)
                };
            } finally {
                this.isLoading = false;
            }
        }
    }

    // PUBLIC

    async handleSubmit(event) {
        this.isLoading = true;
        try {
            event.preventDefault();
            const result = await lockBundle({
                story: event.detail.fields,
                bundleId: this.recordId
            });

            this.template.querySelector('.body').classList.add('slds-hide');

            this._handleSuccess(result);
        } catch (e) {
            let errorMessage = reduceErrors(e);
            if (errorMessage.includes('FIELD_CUSTOM_VALIDATION_EXCEPTION')) {
                errorMessage = this._getfieldValidationError(errorMessage);
            }
            this.submitError = {
                isError: true,
                message: errorMessage
            };
        } finally {
            this.isLoading = false;
        }
    }

    handleNextClick() {
        this.isBundleWithConflict = false;
    }

    async handleDeletionOfUserStoryFromBundle() {
        this.userStoryMetadatasWithConflicts = await this._getConflictingUserStoryMetadataForDatatable();
        this.template?.querySelector('c-user-story-bundle-metadata-operation-conflict-dialog')?.displaySpinner(false);
    }

    saveForm() {
        const btn = this.template.querySelector('.slds-hide');
        if (btn) {
            btn.click();
        }
    }

    closeModal() {
        const closeQA = new CustomEvent('close', {
            bubbles: true,
            composed: true
        });

        this.dispatchEvent(closeQA);
    }

    // PRIVATE

    async _generateInputForm() {
        const prefilledStory = await createPrefilledStory({ version: this.recordId });
        const inputFields = this.template.querySelectorAll('lightning-input-field');
        if (inputFields) {
            this._prefillForm(prefilledStory, inputFields);
        }
    }

    _prefillForm(prefilledStory, inputFields) {
        inputFields.forEach(field => {
            field.value = prefilledStory[field.fieldName];
        });
    }

    async _getDisplayFields() {
        this.displayFields = [
            { fieldName: schema.TITLE.fieldApiName, readOnly: false, required: true },
            { fieldName: schema.ORG_CREDENTIAL.fieldApiName, readOnly: this.isPlatform, required: true },
            { fieldName: schema.ENVIRONMENT.fieldApiName, readOnly: this.isPlatform, required: true },
            { fieldName: schema.PROJECT.fieldApiName, readOnly: this.isPlatform, required: true },
            { fieldName: schema.RELEASE.fieldApiName, readOnly: false, required: false }
        ];
        const fieldNames = await getFieldsFromFieldSet({
            objectName: this.objectName,
            fieldSet: this.fieldSet
        });
        fieldNames.forEach(fieldName => {
            if (!this.displayFields.some(field => field.fieldName === fieldName)) {
                this.displayFields.push({ fieldName: fieldName, required: false, readOnly: false });
            }
        });
    }

    _handleSuccess(detail) {
        if (detail.isPlatform) {
            let recordId = detail.storyId;
            if (detail.commitIds.length > 0) {
                recordId = detail.commitIds[0];
            }
            this[NavigationMixin.Navigate]({
                type: 'standard__recordPage',
                attributes: {
                    recordId: recordId,
                    actionName: 'view'
                }
            });
        } else {
            const ns = namespace.length === 0 ? 'c' : namespace.replace('__', '');
            const cmpDefinition = {
                componentDef: `${ns}:waitingPage`,
                attributes: {
                    storyId: detail.storyId,
                    actionIds: detail.commitIds,
                    snapshotId: detail.snapshotId,
                    actionType: 'commit'
                }
            };

            // Note: Base64 encode the cmpDefinition JS object
            const encodedCmpDefinition = btoa(JSON.stringify(cmpDefinition));
            this[NavigationMixin.Navigate]({
                type: 'standard__webPage',
                attributes: {
                    url: '/one/one.app#' + encodedCmpDefinition
                }
            });
        }
    }

    _getfieldValidationError(errorMessage) {
        const fieldValidationError = errorMessage.split('FIELD_CUSTOM_VALIDATION_EXCEPTION')[1];
        errorMessage = errorMessage.includes(':') ? fieldValidationError.split(':')[0] : fieldValidationError;
        errorMessage = errorMessage.length && errorMessage.includes(', ') ? errorMessage.split(', ')[1] : errorMessage;
        return errorMessage;
    }

    _isBundleWithConflictingMetadatas(userStoryMetadatasWithConflicts) {
        return userStoryMetadatasWithConflicts?.length ? true : false;
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
}