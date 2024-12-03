import { LightningElement, wire } from 'lwc';
import { labels } from './constants.js';
import { showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors } from 'c/copadocoreUtils';
import getUserLicenses from '@salesforce/apex/OverviewAssignedCopadoLicensesController.getUserLicenses';

export default class OverviewAssignedCopadoLicenses extends LightningElement {
    label = labels;
    showSpinner = true;
    listLicenses = [];

    @wire( getUserLicenses )
    wiredUserLicenses( { data, error } ) {
        this.showSpinner = true;
        if ( data ) {
            this.listLicenses = data;
        } else if ( error ) {
            const errorMessage = reduceErrors( error );
            showToastError( this, { message: errorMessage } );
        }
        this.showSpinner = false;
    }
}