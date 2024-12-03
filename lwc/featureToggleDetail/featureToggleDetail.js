import { LightningElement, api } from 'lwc';
import { showToastError, showToastSuccess } from 'c/copadocoreToastNotification';
import { reduceErrors, formatLabel } from 'c/copadocoreUtils';
import { enableFeature, disableFeature } from 'c/personaManagementService';

import { label } from './constants';

export default class FeatureToggleDetail extends LightningElement {
    @api personaDefinition;
    @api
    get featureToggle() {
        return this._featureToggle;
    }
    set featureToggle(value) {
        this._featureToggle = value;
        this.toggleChecked = this._featureToggle.enabled;
    }
    _featureToggle;

    label = label;

    toggleChecked;

    // spinner
    isRunning = false;

    get toggleClass() {
        return 'cds-switch-toggle-card' + (this.toggleChecked ? ' selected' : '');
    }

    get personaId() {
        return this.personaDefinition.Id;
    }

    get toggleDisabled() {
        return this.showMissingLicenses || this.showMissingPermissions;
    }

    get missingLicenses() {
        return this.featureToggle.missingLicenses;
    }

    get showMissingLicenses() {
        return this.featureToggle.missingLicenses.length > 0;
    }

    get missingPermissions() {
        // TODO: these are api names, not labels, we should translate (or store labels also)
        return this.featureToggle.missingPermissionSets
            .concat(this.featureToggle.missingPermissionSetGroups)
            .concat(this.featureToggle.missingCustomPermissions);
    }

    get showMissingPermissions() {
        return (
            this.featureToggle.missingPermissionSets.length > 0 ||
            this.featureToggle.missingPermissionSetGroups.length > 0 ||
            this.featureToggle.missingCustomPermissions.length > 0
        );
    }

    get modalContent() {
        let permissionsTemplate = '';
        if (this.showMissingPermissions) {
            permissionsTemplate = formatLabel(label.Missing_Permissions_Template, [this.missingPermissions.join()]);
        }
        let licensesTemplate = '';
        if (this.showMissingLicenses) {
            licensesTemplate = formatLabel(label.Missing_Licenses_Template, [this.missingLicenses.join()]);
        }
        return formatLabel(label.Feature_Read_More_Template, [permissionsTemplate, licensesTemplate, this.featureToggle.fullDescription]);
    }

    get showSpinner() {
        return this.isRunning;
    }

    handleToggleChange(event) {
        event.preventDefault();
        if (event.detail.checked) {
            this._enableFeature();
        } else {
            this._disableFeature();
        }
    }

    handleOpenModal() {
        this.template.querySelector('c-cds-modal').show();
    }

    handleCancelModal() {
        this.template.querySelector('c-cds-modal').hide();
    }

    // PRIVATE

    async _enableFeature() {
        try {
            this.isRunning = true;
            await enableFeature({ personaId: this.personaId, featureName: this.featureToggle.name });
            showToastSuccess(this, { message: label.Enable_Feature_Success_Message });
            this.toggleChecked = true;
        } catch (error) {
            this.toggleChecked = false;
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isRunning = false;
        }
    }

    async _disableFeature() {
        try {
            this.isRunning = true;
            await disableFeature({ personaId: this.personaId, featureName: this.featureToggle.name });
            showToastSuccess(this, { message: label.Disable_Feature_Success_Message });
            this.toggleChecked = false;
        } catch (error) {
            this.toggleChecked = true;
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isRunning = false;
        }
    }
}