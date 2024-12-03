import { LightningElement, wire } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { labels, tabs } from './constants.js';
import { showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors } from 'c/copadocoreUtils';
import hasApiKey from '@salesforce/apex/OverviewApiKeyController.hasApiKey';

export default class OverviewApiKey extends NavigationMixin(LightningElement) {
    label = labels;
    showSpinner = true;
    hasApiKey;

    @wire( hasApiKey )
    wiredUserLicenses( { data, error } ) {
        this.showSpinner = true;
        if ( data ) {
            this.hasApiKey = data;
        } else if ( error ) {
            const errorMessage = reduceErrors( error );
            showToastError( this, { message: errorMessage } );
        }
        this.showSpinner = false;
    }

    handleClickToAccountSummary () {
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes: {
                apiName: tabs.ACCOUNT_SUMMARY_TAB,
            },
        });
    }
}