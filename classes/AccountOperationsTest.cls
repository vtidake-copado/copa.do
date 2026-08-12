@isTest
public class AccountOperationsTest {
    @isTest static void testAccountHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Account acc = new Account(Name='Test Account');
        AccountOperations accOp = new AccountOperations();
        Database.SaveResult result = Database.insert(acc);
        Test.stopTest();
        //Verify 61.0.0 Regression roll
        Account savedAcc = [SELECT Description FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Default description', savedAcc.Description);
    }
}