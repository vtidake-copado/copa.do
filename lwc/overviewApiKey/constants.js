import API_KEY from '@salesforce/label/c.API_KEY';
import STATUS_API_KEY_REQUIRED from '@salesforce/label/c.StatusApiKeyRequired';
import VALID_KEY from '@salesforce/label/c.ValidKey';
import KEY_NOT_FOUND from '@salesforce/label/c.KeyNotFound';
import TO_ACCOUNT_SUMMARY from '@salesforce/label/c.ToAccountSummary';

export const labels = {
    API_KEY,
    STATUS_API_KEY_REQUIRED,
    VALID_KEY,
    KEY_NOT_FOUND,
    TO_ACCOUNT_SUMMARY
};

// Pending to see if this can be changed by a direct reference to the Tab
const ACCOUNT_SUMMARY_TAB = 'Account_Summary';
export const tabs = {
    ACCOUNT_SUMMARY_TAB
}