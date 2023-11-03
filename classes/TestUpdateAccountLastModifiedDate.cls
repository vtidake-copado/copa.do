@isTest
public class TestUpdateAccountLastModifiedDate {
    @isTest
    static void testTrigger() {
        // Create test data: Account and Opportunity
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
        
        Opportunity testOpportunity = new Opportunity(
            Name = 'Test Opportunity',
            StageName = 'Prospecting',
            CloseDate = Date.today(),
            AccountId = testAccount.Id
        );
        
        // Insert the test Opportunity
        Test.startTest();
        insert testOpportunity;
        Test.stopTest();
        
        // Retrieve the updated Account and verify the Last Modified Date
        Account updatedAccount = [SELECT LastModifiedDate, Industry FROM Account WHERE Id = :testAccount.Id];
        
        // Add assertions to verify the trigger behavior
        System.assertEquals('Education', updatedAccount.Industry);
    }
}