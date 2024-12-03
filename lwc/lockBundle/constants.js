import CANCEL from '@salesforce/label/c.Cancel';
import LOADING from '@salesforce/label/c.LOADING';
import LOCK_BUNDLE from '@salesforce/label/c.USB_LOCK_BUNDLE';
import CANNOT_LOCK_BUNDLE from '@salesforce/label/c.USB_CANNOT_LOCK_BUNDLE';
import ERROR_ALREADY_LOCKED_STORY from '@salesforce/label/c.USB_ERROR_ALREADY_LOCKED_STORY';
import USER_STORY_BUNDLE_CONFLICTING_COMPONENTS from '@salesforce/label/c.USER_STORY_BUNDLE_CONFLICTING_COMPONENTS';
import NEXT from '@salesforce/label/c.NEXT';

import ORG_CREDENTIAL from '@salesforce/schema/User_Story__c.Org_Credential__c';
import ENVIRONMENT from '@salesforce/schema/User_Story__c.Environment__c';
import PROJECT from '@salesforce/schema/User_Story__c.Project__c';
import RELEASE from '@salesforce/schema/User_Story__c.Release__c';
import TITLE from '@salesforce/schema/User_Story__c.User_Story_Title__c';

export const schema = {
    ORG_CREDENTIAL,
    ENVIRONMENT,
    PROJECT,
    RELEASE,
    TITLE
};

export const labels = {
    CANCEL,
    LOADING,
    LOCK_BUNDLE,
    CANNOT_LOCK_BUNDLE,
    ERROR_ALREADY_LOCKED_STORY,
    USER_STORY_BUNDLE_CONFLICTING_COMPONENTS,
    NEXT
};