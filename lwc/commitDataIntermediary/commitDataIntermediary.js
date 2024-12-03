import { LightningElement, api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { showToastError } from 'c/copadocoreToastNotification';
import { namespace, reduceErrors } from 'c/copadocoreUtils';
import COMMIT_DATA_DISABLED from '@salesforce/label/c.Commit_Data_Disabled';

import getCommitDataPageName from '@salesforce/apex/CommitDataIntermediaryCtrl.getCommitDataPageNameFromSettings';

export default class CommitDataIntermediary extends NavigationMixin(LightningElement) {
    @api recordId;

    @api invoke() {
        this.getCommitDataPage();
    }

    async getCommitDataPage() {
        try {
            const pageName = await getCommitDataPageName({ userstoryId: this.recordId });
            if (pageName) {
                this.navigateToCommitPage(pageName);
            } else {
                showToastError(this, { message: COMMIT_DATA_DISABLED });
            }
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    navigateToCommitPage(pageName) {
        const parameters = {};
        parameters[`${namespace || 'c__'}User_Story`] = this.recordId;
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes: {
                apiName: pageName
            },
            state: parameters
        });
    }
}