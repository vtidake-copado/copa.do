@isTest
public class AccountServiceOneTest {

    @isTest
    static void testCreateAccount() {
        Test.startTest();
        
        Account acc = AccountServiceOne.createAccount('Test Account');
        
        Test.stopTest();
        
        // Verify account is created
        System.assertNotEquals(null, acc.Id);
        
        Account fetchedAcc = [SELECT Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Test Account', fetchedAcc.Name);
    }

    @isTest
    static void testGetAccountNames() {
        // Create test data
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 5; i++) {
            accList.add(new Account(Name = 'Acc ' + i));
        }
        insert accList;

        Test.startTest();
        
        List<String> names = AccountServiceOne.getAccountNames();
        
        Test.stopTest();
        
        // Validate results
        System.assert(names.size() > 0);
        System.assert(names.contains('Acc 0'));
    }
}