@isTest
public class AccountOperationsDOWNTIMETest {
    @isTest static void testAccountHasDefaultDescription() {       
        // Perform test
        Test.startTest();
        Account acc = new Account(Name='Testing Account');
        Database.SaveResult result = Database.insert(acc);
        Test.stopTest();
        // Verify
        Account savedAcc = [SELECT Description FROM Account WHERE Id = :result.getId()];
        System.assertEquals('Default description', savedAcc.Description);
    }
}