// AccountTriggerTest.apex

@isTest
public class AccountTriggerTest {
    @isTest
    static void testAccountTrigger() {
        // Create a test Account
        Account testAccount = new Account(Name = 'Test Account');
        
        // Insert the test Account, which should trigger the trigger
        insert testAccount;
        
        // Retrieve the updated Account after trigger execution
        testAccount = [SELECT Id, Status__c FROM Account WHERE Id = :testAccount.Id];
        
        // Verify that the Status__c field on the Account is set to "Active"
        System.assertEquals('Active', testAccount.Status__c);
    }
}