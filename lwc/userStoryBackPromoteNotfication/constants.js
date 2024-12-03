import ACTION_REQUIRED from '@salesforce/label/c.ActionRequired';
import ENVIRONMENT_OUT_OF_SYNC from '@salesforce/label/c.EnvironmentOutOfSync';
import HERE from '@salesforce/label/c.Here';

import ENVIRONMENT_ID from '@salesforce/schema/User_Story__c.Environment__r.Id';
import PIPELINE_ID from '@salesforce/schema/User_Story__c.Project__r.Deployment_Flow__r.Id';

import copadoUtils from 'c/copadocoreUtils';

export const label = {
    ACTION_REQUIRED,
    ENVIRONMENT_OUT_OF_SYNC,
    HERE
};

export const schema = {
    ENVIRONMENT_ID,
    PIPELINE_ID,
    NAMESPACE: copadoUtils.namespace
};