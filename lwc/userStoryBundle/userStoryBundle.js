import { LightningElement, api, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { reduceErrors } from 'c/copadocoreUtils';

import selectedStories from '@salesforce/apex/UserStoryBundleCtrl.selectedStories';
import getAllMetadata from '@salesforce/apex/UserStoryBundleCtrl.getAllMetadata';
import createBundleRecords from '@salesforce/apex/UserStoryBundleCtrl.createBundleRecords';
import checkFeatureEnabled from '@salesforce/apex/UserStoryBundleCtrl.checkFeatureEnabled';

import CANCEL from '@salesforce/label/c.Cancel';
import USER_STORY_BUNDLE from '@salesforce/label/c.User_Story_Bundle';
import CREATE_US_BUNDLE_BUTTON from '@salesforce/label/c.CREATE_US_BUNDLE_BUTTON';
import CANNOT_BUNDLE_MODAL_TITLE from '@salesforce/label/c.USB_CANNOT_BUNDLE_MODAL_TITLE';
import TITLE from '@salesforce/label/c.USDependency_Title';
import FEATURE_NOT_ENABLED_ERROR_MESSAGE from '@salesforce/label/c.Feature_Not_Enabled_Error_Message';

import TITLE_FIELD from '@salesforce/schema/Artifact_Version__c.Name';
import PACKAGE_VERSION_OBJECT from '@salesforce/schema/Artifact_Version__c';
import USER_STORY_OBJECT from '@salesforce/schema/User_Story__c';

export default class UserStoryBundle extends NavigationMixin(LightningElement) {
    @api ids;

    label = {
        CANCEL,
        USER_STORY_BUNDLE,
        CREATE_US_BUNDLE_BUTTON,
        CANNOT_BUNDLE_MODAL_TITLE,
        TITLE,
        FEATURE_NOT_ENABLED_ERROR_MESSAGE
    };
    title = TITLE_FIELD.fieldApiName;
    objectApiName = TITLE_FIELD.objectApiName;
    isLoading = false;
    validationErrors = {
        isError: false,
        message: ''
    };
    submitError = {
        isError: false,
        message: ''
    };

    featureEnabled = true;
    userStoryBundleRelativePath;
    userStoryListViewRelativePath;

    get featureNotEnabled() {
        return !this.featureEnabled;
    }

    _stories;
    _metadata;
    _fullProfiles;
    _destructiveChanges;
    _error;

    @wire(getObjectInfo, { objectApiName: USER_STORY_OBJECT })
    wiredGitRepoObjectInfo({ error, data }) {
        if (data) {
            this.userStoryListViewRelativePath = `/${data.keyPrefix}/o`;
        } else if (error) {
            this._error = reduceErrors(error);
        }
    }

    async connectedCallback() {
        try {
            this.isLoading = true;
            this.featureEnabled = await checkFeatureEnabled();
            if (this.featureEnabled) {
                [this._stories, this._metadata, this._fullProfiles, this._destructiveChanges] = await Promise.all([
                    selectedStories({ ids: this.ids }),
                    getAllMetadata({ ids: this.ids, operations: ['', 'Commit Files', 'Recommit Files'] }),
                    getAllMetadata({ ids: this.ids, operations: ['Full Profiles & Permission Sets', 'FullProfilePermissionSets'] }),
                    getAllMetadata({ ids: this.ids, operations: ['Destructive Changes', 'GitDeletion'] })
                ]);
            }
        } catch (error) {
            this._error = error;
        } finally {
            this.isLoading = false;
        }
    }

    async handleSubmit(event) {
        this.isLoading = true;
        try {
            event.preventDefault();
            const fields = event.detail.fields;
            const recordId = await createBundleRecords({
                bundle: fields,
                stories: this._stories,
                metadata: this._metadata,
                fullProfiles: this._fullProfiles,
                destructiveChanges: this._destructiveChanges
            });
            this.userStoryBundleRelativePath = `/lightning/r/${PACKAGE_VERSION_OBJECT}/${recordId}/view`;
            await Promise.resolve(); // We need to resolve manually the current promise so the DOM gets updated. If don't DOM will be updated after "handleSubmit" is finished.
            await this._navigateToRecordViewPage();
        } catch (error) {
            this.submitError = {
                isError: true,
                message: error.body.message
            };
            this.isLoading = false;
        }
    }

    closeModal() {
        const userStoryListViewRelativePath = this.template.querySelector('[data-id="userStoryListViewRelativePath"]');
        userStoryListViewRelativePath?.click();
    }

    async _navigateToRecordViewPage() {
        const userStoryBundleRelativePath = this.template.querySelector('[data-id="userStoryBundleRelativePath"]');
        userStoryBundleRelativePath?.click();
    }
}