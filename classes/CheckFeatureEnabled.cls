public with sharing class CheckFeatureEnabled {
    private String featureName;
    private Id userId;

    public CheckFeatureEnabled(String featureName) {
        this.featureName = featureName;
        forUser(UserInfo.getUserId());
    }

    public CheckFeatureEnabled forUser(Id userId) {
        this.userId = userId;
        return this;
    }

    public Boolean execute() {
        List<User> users = [SELECT Persona_Id__c FROM User WHERE Id = :this.userId WITH SYSTEM_MODE LIMIT 1];
        if (users.isEmpty()) {
            return false;
        }
        List<Persona_Definition__c> personaDefinitions = [
            SELECT Config_JSON__c
            FROM Persona_Definition__c
            WHERE Id = :users[0].Persona_Id__c
            WITH SYSTEM_MODE
            LIMIT 1
        ];
        if (personaDefinitions.isEmpty()) {
            return true;
        }
        PersonaDefinitionConfig config = (PersonaDefinitionConfig) JSON.deserialize(
            personaDefinitions[0].Config_JSON__c,
            PersonaDefinitionConfig.class
        );
        if (config.features == null) {
            return false;
        }
        for (PersonaDefinitionConfig.FeatureEntry featureEntry : config.features) {
            if (featureEntry.name == this.featureName && featureEntry.enabled) {
                return true;
            }
        }
        return false;
    }
}