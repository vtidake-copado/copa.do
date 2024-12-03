import { LightningElement, wire } from 'lwc';
import isEnviornmentOutOfSync from '@salesforce/apex/BackPromotionAwarenessCtrl.isEnviornmentOutOfSync';
import { CurrentPageReference, NavigationMixin } from 'lightning/navigation';
import { reduceErrors } from 'c/copadocoreUtils';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import { showToastError } from 'c/copadocoreToastNotification';
import { label, schema } from './constants';

export default class UserStoryBackPromoteNotfication extends NavigationMixin(LightningElement) {
    showErrorBanner = false;

    label = label;
    schema = schema;

    _userStoryId;
    pipelineId;
    environmentId;

    @wire(CurrentPageReference)
    getParameters(pageReference) {
        if (pageReference && pageReference.state) {
            this._userStoryId = pageReference.attributes.recordId;
        }
    }

    @wire(getRecord, { recordId: '$_userStoryId', fields: [schema.ENVIRONMENT_ID, schema.PIPELINE_ID] })
    async getRecordDetails({ error, data }) {
        if (data) {
            try {
                this.pipelineId = getFieldValue(data, schema.PIPELINE_ID);
                this.environmentId = getFieldValue(data, schema.ENVIRONMENT_ID);
                this.showErrorBanner = await isEnviornmentOutOfSync({ environmentId: this.environmentId, pipelineId: this.pipelineId });
            } catch (err) {
                showToastError(this, { message: reduceErrors(err) });
            }
        } else if (error) {
            showToastError(this, { message: reduceErrors(error) });
        }
    }

    handleLinkClick(event) {
        event.preventDefault();

        this[NavigationMixin.GenerateUrl]({
            type: 'standard__webPage',
            attributes: {
                url: `${window.location.origin}/apex/` + schema.NAMESPACE + `PipelineManager?id=${this.pipelineId}&mode=manager`
            }
        }).then(url => {
            window.open(url, "_blank");
        });
    }
}