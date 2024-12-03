public with sharing class OverviewApiKeyController {
    @AuraEnabled(cacheable=true)
    public static Boolean hasApiKey () {
        return hasApiKey(false);
    }

    @TestVisible
    private static Boolean hasApiKey (Boolean throwExeption) {
        try {
            if (Test.isRunningTest() && throwExeption) {
                throw new IllegalArgumentException('Exception for testing purposes.');
            }

            return Personal_Settings__c.getInstance(UserInfo.getUserId())?.API_Key__c != null;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}