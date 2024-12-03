import { LightningElement, api } from 'lwc';

export default class FeatureDetailContainer extends LightningElement {
    @api personaDefinition;
    @api featureToggles;

    get featureToggleGroups() {
        return this.featureToggles.groups;
    }
}