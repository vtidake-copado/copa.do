public with sharing class DataSetCtrl {
    @AuraEnabled
    public static string getFlowName(string platform, string key) {
        try {
            return new ExtensionKeyValueSettingsSelector().byPlatformAndKey(platform, key)?.get(0)?.Value__c;
        } catch (Exception e) {
            throw new ApplicationException().auraHandled(e);
        }
    }
}