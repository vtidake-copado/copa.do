import { LightningElement, wire, api } from 'lwc';
import { label } from './constants';
import COPADO_ALERT_CHANNEL from '@salesforce/messageChannel/CopadoAlert__c';
import { CurrentPageReference } from 'lightning/navigation';
import { MessageContext, publish } from 'lightning/messageService';
import validateOverrideConnectionBehavior from '@salesforce/apex/ConnectionBehaviorController.validateOverrideConnectionBehavior';

export default class ConnectionBehaviorsConsideration extends LightningElement {

    _communicationId = 'connectionBehaviorAlerts';
    _alertId = 'connectionBehaviorAlertMessage';
    label = label;

    @api
    recordId;

     @wire(MessageContext)
     messageContext;
    
    @wire(CurrentPageReference)
    getPageReferenceParameters(currentPageReference) {
        if (currentPageReference) {
            this.recordId = currentPageReference.attributes.recordId;
        }
    }
    
    connectedCallback()
    {
        this.validateOverrideBehavior();
    }

    validateOverrideBehavior() { 
        validateOverrideConnectionBehavior({ connectionBehaviorId: this.recordId }).then(result => {
            if (result.hasOverridden) {
                this._showAlert(label.CONNECTION_BEHAVIOR_OVERRIDING_WARNING);
            } else if (result.isOverriding) { 
                this._showAlert(`${label.CONNECTION_BEHAVIOR_WARNING} <a href="/${result.id}"> ${label.HERE}</a>.`);
            }
        }).catch(error => { 
            console.error(error);
        })
    }

    _showAlert(msg) {
        const alert = {
            operation: 'add',
            message: msg,
            dismissible: false,
            variant: 'warning',
            communicationId: this._communicationId,
            id: this._alertId
        };
        publish(this.messageContext, COPADO_ALERT_CHANNEL, alert);
    }
}