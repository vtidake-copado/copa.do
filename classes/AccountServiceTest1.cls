@IsTest
private class AccountServiceTest1 {
    
    @IsTest
    static void testGetAccountsByIndustry() {
        // Prepare test data
        Account acc1 = new Account(Name = 'Tech Corp', Industry = 'Technology', Phone = '1234567890');
        Account acc2 = new Account(Name = 'FinServ Ltd', Industry = 'Finance', Phone = '0987654321');
        insert new List<Account>{ acc1, acc2 };

        // Call method with matching industry
        Test.startTest();
        List<Account> techAccounts = AccountService1.getAccountsByIndustry('Technology');
        Test.stopTest();

        // Assets
        System.assertEquals(1, techAccounts.size(), 'Should return only Technology accounts');
        System.assertEquals('Tech Corp', techAccounts[0].Name, 'Account name should match');
        
        // Call method with non-matching industry
        List<Account> healthcareAccounts = AccountService1.getAccountsByIndustry('Healthcare');
        System.assertEquals(0, healthcareAccounts.size(), 'Should return no accounts for Healthcare');
        
        // Call method with blank industry
        List<Account> blankAccounts = AccountService1.getAccountsByIndustry('');
        System.assertEquals(0, blankAccounts.size(), 'Should return no accounts for blank industry');
    }
}