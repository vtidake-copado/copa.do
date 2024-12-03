import { LightningElement, api, track } from 'lwc';
import { showToastError } from 'c/copadocoreToastNotification';
import { reduceErrors, formatLabel } from 'c/copadocoreUtils';
import { getFeatureToggles } from 'c/personaManagementService';

import { label } from './constants';

export default class PersonaFeatureSettings extends LightningElement {
    _personaDefinition;

    @api
    get personaDefinition() {
        return this._personaDefinition;
    }

    set personaDefinition(personaDefinition) {
        this._personaDefinition = personaDefinition;
        this._loadPersonaFeatures();
    }

    label = label;

    // spinner
    isRunning = true;

    @track featureToggles = {};

    get personaId() {
        return this.personaDefinition.Id;
    }

    get personaName() {
        return this.personaDefinition.Name;
    }

    get showSpinner() {
        return this.isRunning;
    }

    get featuresAvailableLabel() {
        return formatLabel(label.Features_Available_For_Persona, [this.personaName]);
    }

    async _loadPersonaFeatures() {
        try {
            this.isRunning = true;
            const featureToggles = await getFeatureToggles({ personaId: this.personaId });
            this.featureToggles = this._sortToggles(featureToggles);
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isRunning = false;
        }
    }

    _sortToggles(featureToggles) {
        featureToggles.groups.forEach(group => group.featureToggles.sort((a, b) => a.order - b.order));
        featureToggles.groups.sort((a, b) => a.order - b.order);
        return featureToggles;
    }
}