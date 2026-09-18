public with sharing class AccountServiceOne {

    // Method to get all account names
    public static List<String> getAccountNames() {
        List<String> names = new List<String>();
        
        for (Account acc : [SELECT Name FROM Account LIMIT 10]) {
            names.add(acc.Name);
        }
        
        return names;
    }

    // Method to create a new account
    public static Account createAccount(String accName) {
        Account acc = new Account(Name = accName);
        insert acc;
        return acc;
    }
}