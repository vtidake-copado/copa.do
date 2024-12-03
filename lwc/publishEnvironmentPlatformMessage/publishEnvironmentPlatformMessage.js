import { LightningElement, api } from 'lwc';
import PLATFORM_FIELD from '@salesforce/schema/Environment__c.Platform__c';

export default class PublishEnvironmentPlatformMessage extends LightningElement {
    @api recordId;
    platformField = PLATFORM_FIELD;
}