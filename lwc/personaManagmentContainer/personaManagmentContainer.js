import { LightningElement, track } from 'lwc';
import { loadStyle } from 'lightning/platformResourceLoader';
import HIDE_LIGHTNING_HEADER from '@salesforce/resourceUrl/HideLightningHeader';

import {
    checkUserPermissions,
    getPersonaDefinitions,
    createDefaultPersonas,
    checkDefaultPersonaUpdates,
    applyDefaultPersonaUpdates
} from 'c/personaManagementService';

import { reduceErrors, formatLabel } from 'c/copadocoreUtils';
import { label } from './constants';

export default class PersonaManagmentContainer extends LightningElement {
    @track selectedPersona;
    numberOfUsers;
    @track personaDefinitions = [];
    @track defaultPersonasToUpdate = [];

    showSpinner;
    styleLoaded = false;

    label = label;

    userMissingPermission = true;
    isValidationRuleActive = true;
    areRequirementsMet = false;

    // error handling
    showError = false;
    errorMessage;

    get isActivation() {
        return !this.personaDefinitions || !this.personaDefinitions.length;
    }

    get isUpdate() {
        return this.defaultPersonasToUpdate.length > 0;
    }

    async connectedCallback() {
        try {
            this.showSpinner = true;
            await this._checkPermissions();
            await this._loadPersonaDefinitions(true, false);
        } catch (error) {
            this.errorMessage = reduceErrors(error);
            this.showError = true;
        } finally {
            this.showSpinner = false;
        }
    }

    renderedCallback() {
        if (!this.styleLoaded) {
            loadStyle(this, HIDE_LIGHTNING_HEADER);
            this.styleLoaded = true;
        }
    }

    handleNavClick(event) {
        let selected = event.detail;
        this._selectPersona(this.personaDefinitions.find(personaDefinition => personaDefinition.persona.Id === selected));
    }

    async handleStartNow() {
        try {
            this.showSpinner = true;
            const defaultPersonas = [];
            await this._createDefaultPersonas(defaultPersonas);
        } catch (error) {
            this.errorMessage = reduceErrors(error);
            this.showError = true;
        } finally {
            this.showSpinner = false;
        }
    }

    async handleUpdate() {
        try {
            this.showSpinner = true;
            await this._applyDefaultPersonaUpdates();
        } catch (error) {
            this.errorMessage = reduceErrors(error);
            this.showError = true;
        } finally {
            this.showSpinner = false;
        }
    }

    // PRIVATE

    async _checkPermissions() {
        const { hasUserPermissions, isValidationRuleActive } = await checkUserPermissions();
        this.userMissingPermission = !hasUserPermissions;
        this.isValidationRuleActive = isValidationRuleActive;
        this.areRequirementsMet = hasUserPermissions && !this.isValidationRuleActive;
    }

    async _createDefaultPersonas(defaultPersonas) {
        const errorPersonas = await createDefaultPersonas(defaultPersonas);
        if (errorPersonas.length > 0) {
            this.errorMessage = formatLabel(label.CREATE_DEFAULT_PERSONAS_ERROR_MESSAGE, [JSON.stringify(errorPersonas)]);
            this.showError = true;
        }
        await this._loadPersonaDefinitions(false, false);
    }

    async _applyDefaultPersonaUpdates() {
        const errorPersonas = await applyDefaultPersonaUpdates(this.defaultPersonasToUpdate);
        if (errorPersonas.length > 0 && errorPersonas[0].length) {
            this.errorMessage = formatLabel(label.CREATE_DEFAULT_PERSONAS_ERROR_MESSAGE, [JSON.stringify(errorPersonas)]);
            this.showError = true;
        }
        this.defaultPersonasToUpdate = [];
        await this._loadPersonaDefinitions(false, false);
    }

    async _checkForUpdates() {
        this.defaultPersonasToUpdate = await checkDefaultPersonaUpdates();
    }

    async _loadPersonaDefinitions(checkForUpdates, customPersonaAdded) {
        this.personaDefinitions = await getPersonaDefinitions();
        if (this.personaDefinitions.length > 0) {
            this.personaDefinitions.sort(this._compareByOrder);
            let currentSelectedPersona =
                this.selectedPersona && this.personaDefinitions.some(record => record.persona.Id === this.selectedPersona.Id)
                    ? this.personaDefinitions.find(record => record.persona.Id === this.selectedPersona.Id)
                    : this.personaDefinitions[0];
            currentSelectedPersona = customPersonaAdded ? this.personaDefinitions[this.personaDefinitions.length - 1] : currentSelectedPersona;
            this._selectPersona(currentSelectedPersona);
            if (checkForUpdates) {
                await this._checkForUpdates();
            }
        }
    }

    _selectPersona(personaDefinition) {
        this.selectedPersona = personaDefinition.persona;
        this.numberOfUsers = personaDefinition.numberOfUsers;
        personaDefinition.elementClass = 'active';
    }

    refreshPersonaDefinitions(event) {
        let customPersonaAdded = false;
        if (event.detail === 'addCustomPersona') {
            customPersonaAdded = true;
        }
        this._loadPersonaDefinitions(false, customPersonaAdded);
    }

    _compareByOrder(a, b) {
        let result = 0;
        if (a.order && b.order) {
            result = a.order - b.order;
        }
        return result;
    }
}