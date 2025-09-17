public with sharing class AccountService {
    
    /**
     * Fetches accounts by Industry
     * @param industry - The industry value to filter accounts
     * @return List<Account> - Accounts matching the given industry
     */
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