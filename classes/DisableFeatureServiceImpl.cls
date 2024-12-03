public with sharing class DisableFeatureServiceImpl {
    public static void disableFeature1(Persona.DisableFeatureRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        PermissionSet permissionSet = FeatureServiceHelper.getPersonaPermissionSet(config);
        Feature_Toggle__mdt featureToggle = FeatureServiceHelper.getFeature(request.featureName);
        removeCustomPermission(permissionSet, featureToggle);
    }

    // NOTE: this is only to separate transactions
    public static void disableFeature2(Persona.DisableFeatureRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        updatePersonaDefinition(request, config);
    }

    // PRIVATE

    private static void removeCustomPermission(PermissionSet permissionSet, Feature_Toggle__mdt featureToggle) {
        // False positive sinceCustomPermission is setup object
        List<SetupEntityAccess> entities = [
            SELECT Id
            FROM SetupEntityAccess
            WHERE
                ParentId = :permissionSet.Id
                AND SetupEntityId IN (SELECT Id FROM CustomPermission WHERE DeveloperName = :featureToggle.Custom_Permission_Name__c)
            WITH SYSTEM_MODE
        ];
        DML.safeDelete(
            entities,
            String.format(
                Label.ErrorWhileDeleting,
                new List<String>{
                    SetupEntityAccess.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'DisableFeatureServiceImpl.removeCustomPermission'
                }
            )
        );
    }

    private static void updatePersonaDefinition(Persona.DisableFeatureRequest request, PersonaDefinitionConfig config) {
        Feature_Toggle__mdt featureToggle = FeatureServiceHelper.getFeature(request.featureName);
        removeFromFeatureList(config.features, featureToggle);
        PersonaServiceHelper.updatePersonaConfig(request.personaId, config);
    }

    private static void removeFromFeatureList(List<PersonaDefinitionConfig.FeatureEntry> features, Feature_Toggle__mdt featureToggle) {
        for (Integer index = (features.size() - 1); index >= 0; index--) {
            if (features[index].name == featureToggle.DeveloperName) {
                features.remove(index);
            }
        }
    }
}