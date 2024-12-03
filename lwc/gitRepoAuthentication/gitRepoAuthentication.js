import { LightningElement, api, wire } from 'lwc';

import { publish, MessageContext } from 'lightning/messageService';

import { reduceErrors } from 'c/copadocoreUtils';
import { showToastSuccess, showToastError } from 'c/copadocoreToastNotification';

import AUTH_ICONS from '@salesforce/resourceUrl/oAuthIcons';
import COPADO_ALERT_CHANNEL from '@salesforce/messageChannel/CopadoAlert__c';
import gitRepoCommunicationChannel from '@salesforce/messageChannel/GitRepoCommunication__c';

import init from '@salesforce/apex/GitRepositoryController.init';
import save from '@salesforce/apex/GitRepositoryController.save';
import getSSHKey from '@salesforce/apex/GitRepositoryController.getSSHKey';
import getLoginUri from '@salesforce/apex/GitRepositoryController.getLoginURI';
import createSSHKey from '@salesforce/apex/GitRepositoryController.createSSHKey';
import deleteSSHKey from '@salesforce/apex/GitRepositoryController.deleteSSHKey';
import getExistingRepositories from '@salesforce/apex/GitRepositoryController.getExistingRepositories';

import label from './label';
import { schema, constants } from './constants';

export default class GitRepoAuthentication extends LightningElement {
    _communicationId = 'gitRepoAuthenticationAlerts';
    _alertId = 'gitRepoAuthenticationAlertMessage';
    _attachmentId;
    _selectedGitProvider;

    githubLogoIcon = AUTH_ICONS + '/githubLogo.svg';
    gitlabLogoIcon = AUTH_ICONS + '/gitlabLogo.svg';
    bitBucketLogoIcon = AUTH_ICONS + '/bitBucketLogo.svg';
    azureLogoIcon = AUTH_ICONS + '/azureLogo.svg';

    @api apiName;
    @api recordId;
    @api listViewApiName;
    @api hideIllustrator;
    @api mode = 'record';

    isLoading = false;
    isNewMode = true;
    errorMessage;

    httpsFieldVisibleViewMode = false;
    isSSHKeyVisible = false;

    sshKey;
    userName;
    password;
    extraHeaders;
    repositoryName;
    authType = constants.SSH_STRING;

    userNameReadOnly;
    passwordReadOnly;
    extraHeadersReadOnly;
    authTypeReadOnly;

    label = label;
    schema = schema;
    constants = constants;

    @wire(MessageContext)
    messageContext;

    connectedCallback() {
        this.init();
    }

    get gitHubClass() {
        return this._selectedGitProvider === constants.GITHUB_STRING.toLowerCase() ? `${constants.buttonClass} active` : constants.buttonClass;
    }

    get gitLabClass() {
        return this._selectedGitProvider === constants.GITLAB_STRING.toLowerCase() ? `${constants.buttonClass} active` : constants.buttonClass;
    }

    get onPremiseClass() {
        return this._selectedGitProvider === constants.ON_PREMISE_STRING ? `${constants.buttonClass} active` : constants.buttonClass;
    }

    get isAuthenticationDisabled() {
        return !this._selectedGitProvider;
    }

    get illustrator() {
        return this.hideIllustrator !== 'undefined' && this.hideIllustrator ? false : true;
    }

    get recordMode() {
        return this.mode === 'record';
    }

    @api invalidRepository(errorMessage) {
        this.isNewMode = true;
        this._showModal();
        this.errorMessage = errorMessage;
        publish(this.messageContext, gitRepoCommunicationChannel, { isAuthenticated: false });
    }

    async openAuthenticateModal() {
        this.errorMessage = null;

        if (this._selectedGitProvider === constants.ON_PREMISE_STRING) {
            this._showModal();
        } else if (this._selectedGitProvider) {
            this.isLoading = true;
            try {
                const loginUrl = await getLoginUri({
                    repositoryId: this.recordId,
                    provider: this._selectedGitProvider,
                    redirectURI: window.location.href
                });
                window.open(loginUrl, '_self');
            } catch (error) {
                const errorMessage = reduceErrors(error);
                showToastError(this, { message: errorMessage });
                this.isLoading = false;
            }
        }
    }

    closeModal() {
        this.errorMessage = null;
        this._hideModal();
    }

    async authenticateDetails(e) {
        if (!this.validateFields() || !this.validateHttpsFields()) {
            return;
        }
        this.isLoading = true;
        this.template.querySelector('lightning-record-edit-form').submit(e.detail.fields);

        try {
            await save({
                repositoryId: this.recordId,
                authType: this.authType,
                username: this.userName,
                password: this.password,
                extraHeaders: this.extraHeaders
            });

            this.errorMessage = null;
            this.isSSHKeyVisible = this.authType === constants.HTTPS_STRING;
            if (this.recordMode) {
                showToastSuccess(this, { message: this.label.CONFIG_SAVED_SUCCESS });
            }
            publish(this.messageContext, gitRepoCommunicationChannel, { isAuthenticated: true });
        } catch (error) {
            publish(this.messageContext, gitRepoCommunicationChannel, { isAuthenticated: false });
            showToastError(this, { message: error.detail });
        }

        this.isLoading = false;
        this.isNewMode = false;
        this.init();
        this.closeModal();
    }

    get authenticationTypeOptions() {
        return [
            { label: constants.SSH_STRING, value: constants.SSH_STRING },
            { label: constants.HTTPS_STRING, value: constants.HTTPS_STRING }
        ];
    }

    get httpsFieldVisible() {
        return this.authType === constants.HTTPS_STRING;
    }

    get httpsFieldNotVisible() {
        return this.authType !== constants.HTTPS_STRING;
    }

    handleAuthTypeChange(event) {
        this.authType = event.detail.value;

        if (this.authType !== constants.HTTPS_STRING) {
            this.userName = '';
            this.password = '';
        }
    }

    handleUserNameChange(e) {
        this.userName = e.target.value;
    }

    handlePasswordChange(e) {
        this.password = e.target.value;
    }

    handleHeaderChange(e) {
        this.extraHeaders = e.target.value;
    }

    handleProviderSelection(event) {
        this._selectedGitProvider = event.target.getAttribute('data-provider');
    }

    keyToggleHandler() {
        this.isSSHKeyVisible = !this.isSSHKeyVisible;
    }

    editAuthenticateModal() {
        this._showModal();
    }

    closeAuthenticateModal() {
        this.authType = this.authTypeReadOnly;
        if (this.authType !== constants.HTTPS_STRING) {
            this.userName = '';
            this.password = '';
        }
        this._hideModal();
    }

    editAuthenticateDetails() {
        this.isLoading = true;
    }

    validateFields() {
        return [...this.template.querySelectorAll('lightning-input-field')].reduce((validSoFar, field) => {
            return validSoFar && field.reportValidity();
        }, true);
    }

    validateHttpsFields() {
        const uri = this.template.querySelector('lightning-input-field[data-name="URI__c"]').value;
        if (
            (this.authType === constants.SSH_STRING && uri.startsWith(constants.HTTPS_STRING.toLowerCase())) ||
            (this.authType === constants.HTTPS_STRING && !uri.startsWith(constants.HTTPS_STRING.toLowerCase()))
        ) {
            this.errorMessage = this.label.SSH_URI_validation;
            this.template.querySelector('lightning-input-field[data-name="URI__c"]').focus();
        } else if (this.authType === constants.HTTPS_STRING) {
            const hasError = !this.userName || !this.password;
            this.errorMessage = hasError ? `${this.label.Please_Enter} ${!this.userName ? this.label.USERNAME : this.label.PASSWORD}` : null;
        } else {
            this.errorMessage = null;
        }

        return !this.errorMessage;
    }

    async createSSHKey() {
        this.isLoading = true;
        try {
            const result = await createSSHKey({ repositoryId: this.recordId });

            if (!JSON.parse(result).ok) {
                return;
            }
            const sshKeyResponse = JSON.parse(await getSSHKey({ repositoryId: this.recordId }));
            this.sshKey = sshKeyResponse.key;
            this._attachmentId = sshKeyResponse.attachmentId;
            publish(this.messageContext, gitRepoCommunicationChannel, { isAuthenticated: true });
        } catch (error) {
            this.handleError(error.body.message);
        }

        this.isLoading = false;
    }

    async deleteSSHKey() {
        this.isLoading = true;
        if (this._attachmentId) {
            try {
                await deleteSSHKey({ attachmentId: this._attachmentId });
                this.isLoading = false;
                this.sshKey = '';
                this._attachmentId = null;
                showToastSuccess(this, { message: this.label.SSH_KEY_DELETED });
                publish(this.messageContext, gitRepoCommunicationChannel, { isAuthenticated: false });
            } catch (e) {
                this.isLoading = false;
                this._showAlert(e);
            }
        }
    }

    /**
     * Bitbucket SSH: git clone git@bitbucket.org:ztugcesirin/copado-poc.git
     * Bitbucket HTTPS: git clone https://ztugcesirin@bitbucket.org/ztugcesirin/copado-poc.git
     * Gitlab SSH: git@gitlab.com:username/reponame.git
     * Gitlab HTTPS: https://gitlab.copado.com/app-dev/copado_dev.git
     * Github SSH:  git@github.com:tugce/TestPrivateRepo.git
     * Github HTTPS:  https://github.com/tugce/TestPrivateRepo.git
     * VSTS SSH:
     * VSTS HTTPS:
     * */
    populateURLFields(event) {
        let gitProvider = event.detail.value;
        let commitBaseUrl = this.template.querySelector('lightning-input-field[data-name="commitBaseURL"]');
        let branchBaseUrl = this.template.querySelector('lightning-input-field[data-name="branchBaseURL"]');
        let pullRequestBaseUrl = this.template.querySelector('lightning-input-field[data-name="pullRequestBaseURL"]');
        let tagBaseUrl = this.template.querySelector('lightning-input-field[data-name="tagBaseURL"]');

        if (gitProvider && gitProvider !== constants.OTHERS_STRING) {
            let branchBaseParameter =
                gitProvider === constants.BITBUCKET_PROVIDER ? 'branch' : gitProvider === constants.CVC_PROVIDER ? 'src/branch' : 'tree';
            let tagBaseParameter = gitProvider === constants.BITBUCKET_PROVIDER ? 'src' : gitProvider === constants.CVC_PROVIDER ? 'src/tag' : 'tags';
            let branchBaseURLProvider = gitProvider === constants.MTS_PROVIDER ? constants.VS_BRANCH_BASE_URL : constants.BRANCH_BASE_URL;
            let commitBaseURLProvider = gitProvider === constants.MTS_PROVIDER ? constants.VS_COMMIT_BASE_URL : constants.COMMIT_BASE_URL;
            let prBaseURLProvider = gitProvider === constants.MTS_PROVIDER ? constants.VS_PR_BASE_URL : constants.PR_BASE_URL;
            let tagBaseURLProvider = gitProvider === constants.MTS_PROVIDER ? constants.VS_TAG_BASE_URL : constants.TAG_BASE_URL;
            let selectedProvider =
                gitProvider === constants.GITHUB_STRING
                    ? constants.GITHUB_COM
                    : gitProvider === constants.BITBUCKET_PROVIDER
                    ? constants.BITBUCKET_ORG
                    : gitProvider === constants.CVC_PROVIDER
                    ? constants.CVC_COM
                    : gitProvider === constants.GITLAB_STRING
                    ? constants.GITLAB_COM
                    : gitProvider === constants.MTS_PROVIDER
                    ? constants.VISUALSTUDIO_COM
                    : '';

            // Branch base url
            branchBaseUrl.value = this.formatString(branchBaseURLProvider, selectedProvider, branchBaseParameter);
            branchBaseUrl.value = branchBaseUrl.value.replace('(', '{').replace(')', '}');

            // Commit base url
            commitBaseUrl.value = this.formatString(commitBaseURLProvider, selectedProvider);
            commitBaseUrl.value = commitBaseUrl.value.replace('(', '{').replace(')', '}');

            // Pr base url
            pullRequestBaseUrl.value = this.formatString(prBaseURLProvider, selectedProvider);
            pullRequestBaseUrl.value = pullRequestBaseUrl.value.replace('(', '{').replace(')', '}');

            // Tag base url
            tagBaseUrl.value = this.formatString(tagBaseURLProvider, selectedProvider, tagBaseParameter);
            tagBaseUrl.value = tagBaseUrl.value.replace('(', '{').replace(')', '}');
        } else {
            branchBaseUrl.value = null;
            commitBaseUrl.value = null;
            pullRequestBaseUrl.value = null;
            tagBaseUrl.value = null;
        }
    }

    formatString(format, ...values) {
        return format.replace(/{(\d+)}/g, (match, index) => {
            return typeof values[index] !== 'undefined' ? values[index] : match;
        });
    }

    copyToClipboard() {
        if (navigator.clipboard && window.isSecureContext) {
            navigator.clipboard.writeText(this.sshKey);
        } else {
            const textArea = document.createElement('textarea');
            textArea.value = this.sshKey;
            textArea.style.position = 'fixed';
            textArea.style.left = '-999999px';
            textArea.style.top = '-999999px';
            document.body.appendChild(textArea);
            textArea.focus();
            textArea.select();

            if (document.execCommand('copy')) {
                textArea.remove();
            }
        }
    }

    handleError(e) {
        showToastError(this, { message: e });
    }

    handleSelectRepository() {
        this.init();
    }

    // PRIVATE

    async init() {
        this.isLoading = true;
        this.password = '';

        try {
            const repository = await init({ recordId: this.recordId });
            this.isNewMode = !repository?.authType;
            this.repositoryName = repository.repositoryName;

            if (repository?.authType === constants.SSH_STRING) {
                this.authType = repository.authType;
                this.authTypeReadOnly = repository.authType;
                this.sshKey = repository.sshKey.key;
                this._attachmentId = repository.sshKey.attachmentId;
                this.httpsFieldVisibleViewMode = false;
            } else if (repository?.authType === constants.HTTPS_STRING) {
                this.authType = repository.authType;
                this.authTypeReadOnly = repository.authType;
                this.userName = repository.username;
                this.userNameReadOnly = repository.username;
                this.extraHeaders = repository.headers;
                this.httpsFieldVisibleViewMode = true;
            }

            if (this.isNewMode) {
                const existingRepositories = await getExistingRepositories({ repositoryId: this.recordId });

                if (existingRepositories) {
                    this.template
                        .querySelector('c-git-repo-selection-popup')
                        .show(JSON.parse(existingRepositories), this.recordId, this.repositoryName);
                }
            } else if (!this.recordMode) {
                this._notifyWizard();
            }
        } catch (error) {
            this.errorMessage = error;
            this.handleError(error);
        }

        this.isLoading = false;
    }

    _showModal() {
        this.errorMessage = null;
        this.template.querySelector('c-copadocore-modal').show();
    }

    _hideModal() {
        this.errorMessage = null;
        this.template.querySelector('c-copadocore-modal').hide();
    }

    _showAlert(error) {
        const alert = {
            operation: 'add',
            message: error,
            dismissible: true,
            variant: 'error',
            communicationId: this._communicationId,
            id: this._alertId
        };
        publish(this._context, COPADO_ALERT_CHANNEL, alert);
    }

    _clearAlert() {
        const alert = {
            operation: 'remove',
            communicationId: this._communicationId,
            id: this._alertId
        };
        publish(this._context, COPADO_ALERT_CHANNEL, alert);
    }

    _notifyWizard() {
        const event = new CustomEvent('authenticationcompleted', { detail: { repositoryId: this.recordId } });
        this.dispatchEvent(event);
    }
}