import { LightningElement, api } from 'lwc';
import { formatLabel } from 'c/copadocoreUtils';
import { label } from './constants';

export default class FeatureToggleTierOption extends LightningElement {
    @api personaDefinition;
    @api featureToggle;
    @api selectedTier;

    label = label;

    get cardClass() {
        return 'cds-radio-card slds-m-vertical_small' + (this.isSelected ? ' selected' : '') + (this.toggleDisabled ? ' disabled' : '');
    }

    get isSelected() {
        return this.selectedTier === this.featureToggle.name;
    }

    get showReadMore() {
        return !!this.featureToggle.customPermissionName;
    }

    get toggleDisabled() {
        return this.showMissingLicenses || this.showMissingPermissions;
    }

    get missingLicenses() {
        return this.featureToggle.missingLicenses;
    }

    get showDependencies() {
        return this.showMissingLicenses || this.showMissingPermissions;
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

    handleOpenModal() {
        this.template.querySelector('c-cds-modal').show();
    }

    handleCancelModal() {
        this.template.querySelector('c-cds-modal').hide();
    }

    handleSelectTier() {
        if (this.isSelected) {
            return;
        }
        const selectedTier = this.featureToggle.name;
        this.dispatchEvent(new CustomEvent('tierselected', { detail: selectedTier }));
    }
}