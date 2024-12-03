import { LightningElement, api } from 'lwc';
import { showToastError, showToastSuccess } from 'c/copadocoreToastNotification';
import { reduceErrors } from 'c/copadocoreUtils';
import { enableFeature, disableFeature } from 'c/personaManagementService';

import { label } from './constants';

export default class FeatureToggleTier extends LightningElement {
    @api personaDefinition;
    @api
    get featureToggleGroup() {
        return this._featureToggleGroup;
    }
    set featureToggleGroup(value) {
        this._featureToggleGroup = value;
        this.selectedTier = this._featureToggleGroup.featureToggles.some(featureToggle => featureToggle.enabled)
            ? this._featureToggleGroup.featureToggles.find(featureToggle => featureToggle.enabled).name
            : '';
    }
    _featureToggleGroup;

    // spinner
    isRunning = false;

    selectedTier;

    get personaId() {
        return this.personaDefinition.Id;
    }

    get groupToggles() {
        return this.featureToggleGroup.featureToggles;
    }

    get disableFeatureTierName() {
        return this.groupToggles.some(featureToggle => !featureToggle.customPermissionName)
            ? this.groupToggles.find(featureToggle => !featureToggle.customPermissionName).name
            : '';
    }

    get showSpinner() {
        return this.isRunning;
    }

    handleSelectTier(event) {
        const selectedTier = event.detail;
        this._changeTier(selectedTier);
    }

    // PRIVATE

    async _changeTier(selectedTier) {
        try {
            this.isRunning = true;
            const featuresToDisable = this.groupToggles
                .filter(featureToggle => featureToggle.name !== selectedTier && featureToggle.name !== this.disableFeatureTierName)
                .map(featureToggle => featureToggle.name);
            const featurePromises = featuresToDisable.map(feature => {
                return disableFeature({ personaId: this.personaId, featureName: feature });
            });
            await Promise.all(featurePromises);
            if (selectedTier !== this.disableFeatureTierName) {
                await enableFeature({ personaId: this.personaId, featureName: selectedTier });
            }

            const toastMessage =
                selectedTier === this.disableFeatureTierName ? label.Disable_Feature_Success_Message : label.Enable_Feature_Success_Message;
            showToastSuccess(this, { message: toastMessage });
            this._changeSelection(selectedTier);
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isRunning = false;
        }
    }

    _changeSelection(selectedTier) {
        this.selectedTier = selectedTier;
    }
}