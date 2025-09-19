public with sharing class AccountService1 {
    
    // This is update
    
    public static List<Account> getAccountsByIndustry(String industry) {
        if (String.isBlank(industry)) {
            return new List<Account>();
        }
        return [
            SELECT Id, Name, Industry, Phone 
            FROM Account 
            WHERE Industry = :industry
        ];
    }
}