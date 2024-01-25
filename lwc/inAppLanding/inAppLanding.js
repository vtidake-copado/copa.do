import { LightningElement, wire, api, track } from 'lwc';
import getAccountList from '@salesforce/apex/GetRecordId.getAccount'
import getAnyAccountList from '@salesforce/apex/GetRecordId.getAnyAccount'
import getLoanApplicationList from '@salesforce/apex/GetRecordId.getResidentialLoanApplication'

export default class InAppLanding extends LightningElement {
    @api welcome_text = "Welcome to the Financial Services Cloud Learning Org";
    @api description = "Here's a collection of resources to help you get started. Explore among the latest features below, available in Financial Services Cloud";
    @api no_record_loan_application = false;
    @api no_record_account = false;

    accountId;
    loanApplicationId;

    connectedCallback() {
        getAccountList()
        .then(result => {
            console.debug("Account from getAccount", result);
            if (result.length) {
                this.accountId = result[0].Id;
            } else {
                console.debug("Specified Account is not present, selecting random record");
                getAnyAccountList()
                .then(newResult => {
                    console.debug("Account from getAnyAccount", newResult);
                    if (newResult.length) {
                        this.no_record_account = false;
                        this.accountId = newResult[0].Id;
                    } else {
                        this.no_record_account = true;
                        this.accountId = ""
                    }
                })
            }
        })

        getLoanApplicationList()
        .then(result => {
            console.debug("ResidentialLoanApplication from getLoanApplicationList", result);
            if (result.length) {
                this.no_record_loan_application = false;
                this.loanApplicationId = result[0].Id;
            } else {
                this.no_record_loan_application = true;
                this.loanApplicationId = ""
            }
        })
    }

    get pass_false() {
        return false;
    }

    get pass_true() {
        return true;
    }

}