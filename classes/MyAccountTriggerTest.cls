@isTest
public class MyAccountTriggerTest {
    @isTest
    static void testAccountTrigger() {
        // Create test data
        Account testAccount = new Account(Name = 'Test Account');
        List<Account> accounts = new List<Account>();
        accounts.add(testAccount);
        
        // Trigger the trigger
        Test.startTest();
        insert accounts;
        Test.stopTest();
        
        // Verify the trigger logic
        Account updatedAccount = [SELECT Description FROM Account WHERE Id = :testAccount.Id];
        System.assertEquals('This is a test account.', updatedAccount.Description);
    }
}