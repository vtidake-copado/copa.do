import { LightningElement, api, wire } from 'lwc';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';

import { showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors } from 'c/copadocoreUtils';

import { label, schema } from './constants';

export default class OutOfSyncAlerts extends LightningElement {
    @api recordId;

    label = label;
    isAccessible = false;
    _userHasPermission = false;

    get noEditPermission() {
        return !this._userHasPermission;
    }

    @wire(getObjectInfo, { objectApiName: schema.SYSTEM_PROPERTY_OBJECT.objectApiName })
    getSystemPropertyObjectInfo({ error, data }) {
        if (data) {
            this.isAccessible = data.queryable;
            this._userHasPermission = data.updateable && !!data.fields[schema.SYSTEM_PROPERTY_VALUE.fieldApiName]?.updateable;
        } else if (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }
}