public with sharing class FeatureServiceHelper {
    @Testvisible
    private static List<Feature_Toggle__mdt> mock;

    public static List<Feature_Toggle__mdt> getFeatureToggleRecords() {
        if (Test.isRunningTest() && mock != null) {
            return mock;
        }
        return [
            SELECT
                Feature_Toggle_Group__r.MasterLabel,
                Feature_Toggle_Group__r.DeveloperName,
                Feature_Toggle_Group__r.Description__c,
                Feature_Toggle_Group__r.Icon_Name__c,
                Feature_Toggle_Group__r.Type__c,
                Feature_Toggle_Group__r.Order__c,
                MasterLabel,
                DeveloperName,
                Custom_Permission_Name__c,
                Short_Description__c,
                Full_Description__c,
                Order__c,
                (SELECT Type__c, Value__c FROM Feature_Toggle_Requirements__r)
            FROM Feature_Toggle__mdt
            WITH USER_MODE
        ];
    }

    public static Feature_Toggle__mdt getFeature(String featureName) {
        if (Test.isRunningTest() && mock != null) {
            return mock[0];
        }
        return [
            SELECT
                Feature_Toggle_Group__r.MasterLabel,
                Feature_Toggle_Group__r.DeveloperName,
                Feature_Toggle_Group__r.Description__c,
                Feature_Toggle_Group__r.Icon_Name__c,
                Feature_Toggle_Group__r.Type__c,
                MasterLabel,
                DeveloperName,
                Custom_Permission_Name__c,
                Short_Description__c,
                Full_Description__c,
                (SELECT Type__c, Value__c FROM Feature_Toggle_Requirements__r)
            FROM Feature_Toggle__mdt
            WHERE DeveloperName = :featureName
            WITH USER_MODE
            LIMIT 1
        ];
    }

    public static PermissionSet getPersonaPermissionSet(PersonaDefinitionConfig config) {
        String permissionSet = config.getPersonaPermissionSet();
        return [SELECT Name, Description, Label, NamespacePrefix FROM PermissionSet WHERE Name = :permissionSet WITH USER_MODE LIMIT 1];
    }

    // PRIVATE
}