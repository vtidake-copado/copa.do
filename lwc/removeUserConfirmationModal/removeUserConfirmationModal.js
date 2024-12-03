import { LightningElement, api } from 'lwc';
import { showToastSuccess, showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors } from 'c/copadocoreUtils';
import { removeUser } from 'c/personaManagementService';

import { label } from './constants';

export default class RemoveUserConfirmationModal extends LightningElement {
    personaId;
    userId;

    label = label;

    showSpinner = false;

    // Error handling
    showError = false;
    errorMessage;

    // PUBLIC

    get removeDisabled() {
        return this.showSpinner;
    }

    get safeMode() {
        return !this.showError;
    }

    get getButtonLabel(){
        return this.showError ? label.Ok : label.Cancel;
    }

    @api show() {
        this.template.querySelector('c-cds-modal').show();
    }

    @api hide() {
        this.template.querySelector('c-cds-modal').hide();
    }

    @api setPersonaUser(personaId, userId) {
        this.personaId = personaId;
        this.userId = userId;
    }

    // TEMPLATE

    handleClickCancel() {
        this._resetInputs();
        this.hide();
    }

    async handleClickRemove() {
        try {
            this.showSpinner = true;
            await removeUser({ personaId: this.personaId, userIds: [this.userId] });
            showToastSuccess(this, { message: label.Remove_User_From_Persona_Success_Message });
            this.dispatchEvent(new CustomEvent('removeduser'));
            this.hide();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            this.showError = true;
            this.errorMessage = errorMessage;
        } finally {
            this.showSpinner = false;
        }
    }

    // PRIVATE

    _resetInputs() {
        this.personaId = null;
        this.userId = null;
        this.showError = false;
        this.errorMessage = null;
    }
}