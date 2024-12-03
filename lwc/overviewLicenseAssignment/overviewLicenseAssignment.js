import { LightningElement, track } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
import { labels, tabs } from './constants.js';
import { showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors, handleAsyncError } from 'c/copadocoreUtils';
import fetchLicensesInfo from '@salesforce/apex/LicenseManagerCtrl.fetchLicensesInfo';

export default class OverviewLicenseAssignment extends NavigationMixin(LightningElement) {
    label = labels;
    showSpinner = true;
    @track licenses = [];

    async connectedCallback () {
        debugger;
        try {
            this.showSpinner = true;
            debugger;
            const licensesRetrieved = await this.getLicensesInfo();
            for ( const license of Object.values( licensesRetrieved ) ) {

                this.licenses.push( {
                    name: license.name,
                    used: license.used,
                    total: license.available,
                    displayText: `${license.name} ${license.used}/${license.available}`,
                    badgeVariant: this.determineBadgeVariant(license.used, license.available)
                    //dynamicBadgeClass: this.calculateLicenseBadgeClasses(license.used, license.available)
                } );
            }
        } catch ( error ) {
            console.error(error);
            showToastError( this, reduceErrors( error ) );
        } finally {
            this.showSpinner = false;
        }
    }

    async getLicensesInfo () {
        const safeFetchLicensesInfo = handleAsyncError(fetchLicensesInfo, {
            title: this.label.ERROR
        });

        const licensesInfo = await safeFetchLicensesInfo(this);
        return licensesInfo;
    }

    determineBadgeVariant(used, total) {
        // Ensure we have valid numbers
        if (typeof used !== 'number' || typeof total !== 'number') {
            console.warn('Invalid input to determineBadgeVariant:', { used, total });
            return 'info'; // Default fallback
        }

        if (used >= total) {
            return 'error';
        } else if (used < total && used >= total/2) {
            return 'warning';
        } else {
            return 'success';
        }
    }

    calculateLicenseBadgeClasses (used, total) {
        const fixBadgeClasses = 'slds-card__footer-action badge-message';

        if ( used >= total ) {
            return fixBadgeClasses + ' badge-red';
        } else if ( used == total || (used < total && used >= total/2) ) {
            return fixBadgeClasses + ' badge-yellow';
        } else {
            return fixBadgeClasses + ' badge-blue';
        }
    }
    
    handleClickToLicenseManager () {
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes: {
                apiName: tabs.LICENSE_MANAGER_TAB,
            },
        });
    }
}