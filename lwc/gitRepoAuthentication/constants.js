import GIT_REPOSITORY from '@salesforce/schema/Git_Repository__c';
import GIT_PROVIDER_FIELD from '@salesforce/schema/Git_Repository__c.Git_Provider__c';
import URI_FIELD from '@salesforce/schema/Git_Repository__c.URI__c';
import COMMIT_BASE_URL_FIELD from '@salesforce/schema/Git_Repository__c.Commit_Base_URL__c';
import PULL_REQUEST_BASE_URL_FIELD from '@salesforce/schema/Git_Repository__c.Pull_Request_Base_URL__c';
import BRANCH_BASE_URL_FIELD from '@salesforce/schema/Git_Repository__c.Branch_Base_URL__c';
import TAG_BASE_URL_FIELD from '@salesforce/schema/Git_Repository__c.Tag_Base_URL__c';

export const schema = {
    GIT_REPOSITORY,
    GIT_PROVIDER_FIELD,
    URI_FIELD,
    COMMIT_BASE_URL_FIELD,
    PULL_REQUEST_BASE_URL_FIELD,
    BRANCH_BASE_URL_FIELD,
    TAG_BASE_URL_FIELD
};

export const constants = {
    BRANCH_BASE_URL: 'https://{0}/(Username)/(RepositoryName)/{1}/',
    COMMIT_BASE_URL: 'https://{0}/(Username)/(RepositoryName)/commits/',
    PR_BASE_URL: 'https://{0}/(Username)/(RepositoryName)/',
    TAG_BASE_URL: 'https://{0}/(Username)/(RepositoryName)/{1}/',
    VS_BRANCH_BASE_URL: 'https://(Username).{0}/_git/(RepositoryName)/{1}/',
    VS_COMMIT_BASE_URL: 'https://(Username).{0}/_git/(RepositoryName)/',
    VS_PR_BASE_URL: 'https://(Username).{0}/_git/(RepositoryName)/',
    VS_TAG_BASE_URL: 'https://(Username).{0}/_git/(RepositoryName)/{1}/',
    GITHUB_COM: 'github.com',
    BITBUCKET_ORG: 'bitbucket.org',
    GITLAB_COM: 'gitlab.com',
    VISUALSTUDIO_COM: 'visualstudio.com',
    BITBUCKET_PROVIDER: 'Bitbucket',
    MTS_PROVIDER: 'Microsoft Team Service',
    CVC_PROVIDER: 'Copado Version Control',
    CVC_COM: '{Domain}.cvc.copado.com',
    KEYNAME: 'id_rsa.pub',
    SSH_STRING: 'SSH',
    HTTPS_STRING: 'HTTPS',
    GITHUB_STRING: 'Github',
    GITLAB_STRING: 'GitLab',
    OTHERS_STRING: 'Others',
    ON_PREMISE_STRING: 'onPremise',
    REPOSITORIES: 'repositories', // Need to check if backend file has extension in the file title or not,
    buttonClass: 'slds-button slds-button_neutral auth-option-btn'
};