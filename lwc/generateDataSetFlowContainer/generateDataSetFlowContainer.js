import { LightningElement, api } from 'lwc';
import { CloseActionScreenEvent } from 'lightning/actions';
import { reduceErrors } from 'c/copadocoreUtils';
import { showToastError, showToastSuccess } from 'c/copadocoreToastNotification';
import { flowInputs, label, extensionKeyValue } from './constants';
import getFlowName from '@salesforce/apex/DataSetCtrl.getFlowName';

export default class GenerateDataSetFlowContainer extends LightningElement {
    @api recordId;
    flowName;
    label = label;
    get inputVariables() {
        return [{ name: flowInputs.inputVariableName, type: flowInputs.type, value: this.recordId }];
    }

    get displayFlow() {
        return this.recordId && this.flowName;
    }

    async connectedCallback() {
        try {
            this.flowName = await getFlowName({ platform: extensionKeyValue.platform, key: extensionKeyValue.key });
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    handleStatusChange(event) {
        if (event.detail.status === 'FINISHED') {
            this.dispatchEvent(new CloseActionScreenEvent());
            showToastSuccess(this, { message: label.DATA_SET_GENERATION_MESSAGE });
            setTimeout(() => {
                window.location.reload();
            }, 3000);
        }
    }
}