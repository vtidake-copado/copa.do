import { LightningElement, api } from 'lwc';

export default class FeatureToggleGroupDetailContainer extends LightningElement {
    @api personaDefinition;
    @api featureToggleGroup;

    get personaId() {
        return this.personaDefinition.Id;
    }

    get groupDescription() {
        return this.featureToggleGroup.description;
    }

    get isTierGroup() {
        return this.featureToggleGroup.type === 'Tier';
    }

    get groupToggles() {
        return this.featureToggleGroup.featureToggles;
    }
}