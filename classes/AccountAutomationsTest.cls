// AccountAutomationsTest.cls
@IsTest
private class AccountAutomationsTest {
    @isTest static void testDefaultDescription(){
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description, 'Description should be set to default');
        
        acc.Description = 'Custom Description';
        acc = AccountAutomations.setDefaultDescription(acc);
        System.assertEquals('Custom Description', acc.Description, 'Existing description should not change');
    }
    
    @isTest static void testDefaultPhone(){
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        
        acc = AccountAutomations.setDefaultPhone(acc);
        System.assertEquals('1234567890', acc.Phone, 'Phone should be set to default');
    }
}