import { LightningElement, api } from 'lwc';
import { labels } from './constants';

import { showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors } from 'c/copadocoreUtils';

import saveRepositorySelection from '@salesforce/apex/GitRepositoryController.saveRepositorySelection';

export default class GitRepoSelectionPopup extends LightningElement {

    recordId;
    labels = labels;
    repositories = [];
    isLoading;

    _selectedRepository = {};

    @api show(configJson, repositoryId, repositoryName) {
        this.recordId = repositoryId;
        this.state = configJson.state;
        this.repositoryName = repositoryName;
        this._selectedRepository.name = repositoryName;
        this.repositories = configJson?.repositories || [];
        this.template.querySelector('c-copadocore-modal').show();
    }

    @api hide() {
        this.template.querySelector('c-copadocore-modal').hide();
    }

    get hasRepositories() {
        return this.repositories?.length;
    }

    selectGitProvider(event) {
        this._selectedRepository = {
            name: event.currentTarget.getAttribute('data-name'),
            id: event.currentTarget.getAttribute('data-id')
        };
        this.template.querySelectorAll('.cds-radio-card').forEach(item => item.classList.remove('selected'));
        event.currentTarget.classList.add('selected');
    }

    async save() {
        const request = {
            state: this.state,
            recordId: this.recordId,
            repositoryId: this._selectedRepository?.id,
            repositoryName: this._selectedRepository?.name
        };

        this.isLoading = true;
        try {
            await saveRepositorySelection({serializedRequest: JSON.stringify(request)});
            this.hide();
            this.dispatchEvent(new CustomEvent('save', { bubbles: true, composed: true }));
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
        this.isLoading = false;
    }
}