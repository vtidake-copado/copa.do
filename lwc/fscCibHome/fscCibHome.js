import { LightningElement , api } from 'lwc';
import getAccountList from '@salesforce/apex/GetRecordId.getAccount'
import getAnyAccountList from '@salesforce/apex/GetRecordId.getAnyAccount'
import getInteractionSummaryList from '@salesforce/apex/GetRecordId.getInteractionSummary'
import getActionPlanList from '@salesforce/apex/GetRecordId.getActionPlan'
import getHouseholdAccountList from '@salesforce/apex/GetRecordId.getHouseholdAccounts'
import getAnyHouseholdAccountList from '@salesforce/apex/GetRecordId.getAnyHouseholdAccount'
import getFinancialDealList from '@salesforce/apex/GetRecordId.getFinancialDeal'
import getLoanApplicationList from '@salesforce/apex/GetRecordId.getResidentialLoanApplication'

export default class FscCibHome extends LightningElement {
    @api app_welcome_text = "Welcome to Corporate and Investment Banking";
    @api app_description = "What category of capabilities are you interested in?";
    @api no_record_account = false;
    @api no_record_household_account = false;
    @api no_record_financial_deal = false;
    @api no_record_action_plan = false;
    @api no_record_interaction_summary = false;
    @api no_record_loan_application = false;

    accountId;
    householdAccountId;
    financialDealId;
    actionPlanId;
    interactionSummaryId;
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

        getHouseholdAccountList()
        .then(result => {
            console.debug("Household Account from getHouseholdAccount", result);
            if (result.length) {
                this.householdAccountId = result[0].Id;
            } else {
                console.debug("Specified Household Account is not present, selecting random record");
                getAnyHouseholdAccountList()
                .then(newResult => {
                    console.debug("Household Account from getAnyHouseholdAccount", newResult);
                    if (newResult.length) {
                        this.no_record_household_account = false;
                        this.householdAccountId = newResult[0].Id;
                    } else {
                        this.no_record_household_account = true;
                        this.householdAccountId = ""
                    }
                })
            }
        })

        getInteractionSummaryList()
        .then(result => {
            console.debug("InteractionSummary from getInteractionSummary", result);

            this.no_record_interaction_summary = true;
            if (result.length) {
                this.no_record_interaction_summary = false;
                this.interactionSummaryId = result[0].Id;
            }
        })

        getActionPlanList()
        .then(result => {
            console.debug("ActionPlan from getActionPlan", result);
            if (result.length) {
                this.no_record_action_plan = false;
                this.actionPlanId = result[0].Id;
            } else {
                this.no_record_action_plan = true;
                this.actionPlanId = ""
            }
        })

        getFinancialDealList()
        .then(result => {
            console.debug("FinancialDeal from getFinancialDeal", result);
            if (result.length) {
                this.no_record_financial_deal = false;
                this.financialDealId = result[0].Id;
            } else {
                this.no_record_financial_deal = true;
                this.financialDealId = ""
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

    get load_data() {
        return false;
    }
}