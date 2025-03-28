public class AccountAutomations {
    
    // Bug 1: Public variables should be private/protected
    public static String accountName;
    
    // Bug 2: Method is too complex with multiple responsibilities
    public void processAccounts(List<Account> accounts) {
        // Bug 3: SOQL inside loop
        for(Account acc : accounts) {
            List<Contact> contacts = [SELECT Id FROM Contact WHERE AccountId = :acc.Id];
            
            // Bug 4: DML inside loop
            acc.Name = acc.Name + ' Updated';
            update acc;
            
            // Bug 5: Hardcoded ID
            if(acc.OwnerId == '005x0000001ABC') {
                acc.Description = 'VIP Account';
            }
            
            // Bug 6: Empty catch block
            try {
                doSomething();
            } catch(Exception e) {
                // Empty catch block
            }
        }
    }
    
    // Bug 7: Method with too many parameters
    public void updateAccountDetails(String name, String phone, String website, 
                                   String industry, String rating, String type,
                                   String ownership, String employees) {
        // Method implementation
    }
    
    // Bug 8: Unused private method
    private void doSomething() {
        Integer i = 0;
        i++;  // Bug 9: Unused variable
    }
    
    // Bug 10: Method doesn't include sharing declaration
    public static List<Account> getAccounts() {
        // Bug 11: SOQL vulnerable to SOQL injection
        String query = 'SELECT Id, Name FROM Account WHERE Name LIKE \'%' + accountName + '%\'';
        return Database.query(query);
    }
}