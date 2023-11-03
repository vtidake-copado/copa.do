public with sharing class FOM_AccountTriggerHandler {
    @TestVisible private static Boolean isTestMode = false;
    @TestVisible static Boolean isTest = false;

    public static void handleAccountTrigger(List<Account> newAccounts, Map<Id, Account> oldMap) {
        if (!isTestMode || isTest) {
            // Your actual trigger handler logic goes here
            for (Account newAccount : newAccounts) {
                Account oldAccount = oldMap.get(newAccount.Id);
                // Perform your desired actions here
            }
        }
    }
}