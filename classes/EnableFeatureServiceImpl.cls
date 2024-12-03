public with sharing class EnableFeatureServiceImpl {
    public static void enableFeature1(Persona.EnableFeatureRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        PermissionSet permissionSet = FeatureServiceHelper.getPersonaPermissionSet(config);
        Feature_Toggle__mdt featureToggle = FeatureServiceHelper.getFeature(request.featureName);
        assignCustomPermission(permissionSet, featureToggle);
    }

    // NOTE: this is only to separate transactions
    public static void enableFeature2(Persona.EnableFeatureRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        updatePersonaDefinition(request, config);
    }

    @SuppressWarnings('PMD.ApexCRUDViolation')
    public static void assignCustomPermission(PermissionSet permissionSet, Feature_Toggle__mdt featureToggle) {
        // False positive sinceCustomPermission is setup object
        CustomPermission customPermission = [SELECT Id FROM CustomPermission WHERE DeveloperName = :featureToggle.Custom_Permission_Name__c LIMIT 1];
        SetupEntityAccess customPermissionAssigment = new SetupEntityAccess(SetupEntityId = customPermission.Id, ParentId = permissionSet.Id);
        DML.safeInsert(
            customPermissionAssigment,
            String.format(Label.ErrorWhileInserting, new List<String>{ 'SetupEntityAccess', 'EnableFeatureServiceImpl.assignCustomPermissions' })
        );
    }

    // PRIVATE

    private static void updatePersonaDefinition(Persona.EnableFeatureRequest request, PersonaDefinitionConfig config) {
        Feature_Toggle__mdt featureToggle = FeatureServiceHelper.getFeature(request.featureName);
        PersonaDefinitionConfig.FeatureRequirements requirements = new PersonaDefinitionConfig.FeatureRequirements();
        for (Feature_Toggle_Requirement__mdt featureToggleRequirement : featureToggle.Feature_Toggle_Requirements__r) {
            String type = featureToggleRequirement.Type__c;
            String value = featureToggleRequirement.Value__c;
            if (type == PersonaDefinitionConfig.PermissionType.PermissionSetGroup.name()) {
                requirements.addPermissionSetGroup(value);
            } else if (type == PersonaDefinitionConfig.PermissionType.PermissionSet.name()) {
                requirements.addPermissionSet(value);
            } else if (type == PersonaDefinitionConfig.PermissionType.CustomPermission.name()) {
                requirements.addCustomPermission(value);
            } else if (type == PersonaDefinitionConfig.PermissionType.CopadoLicense.name()) {
                requirements.addLicense(value);
            }
        }
        PersonaDefinitionConfig.FeatureEntry entry = new PersonaDefinitionConfig.FeatureEntry()
            .name(featureToggle.DeveloperName)
            .customPermission(featureToggle.Custom_Permission_Name__c)
            .featureRequirements(requirements)
            .enabled();
        config.addFeature(entry);
        PersonaServiceHelper.updatePersonaConfig(request.personaId, config);
    }
}