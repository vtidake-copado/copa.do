public class getRecordIdForAura {
	@AuraEnabled
    public static List<Account> getAccounts() {
        return [SELECT Id, Name FROM Account WHERE Name LIKE '%Rachel%' LIMIT 1];
    }
    
    @AuraEnabled
    public static List<Account> getAnyAccount() {
        return [SELECT Id, Name FROM Account WHERE RecordTypeId IN (SELECT Id FROM RecordType WHERE DeveloperName = 'PersonAccount') ORDER BY LastModifiedDate DESC NULLS LAST LIMIT 1];
    }
    
    @AuraEnabled
    public static List<InteractionSummary> getInteractionSummary() {
        return [SELECT Id FROM InteractionSummary ORDER BY LastModifiedDate DESC NULLS LAST LIMIT 1];
    }
    
    @AuraEnabled
    public static List<ResidentialLoanApplication> getResidentialLoanApplication() {
        return [SELECT Id FROM ResidentialLoanApplication ORDER BY LastModifiedDate DESC NULLS LAST LIMIT 1];
    }
    
    @AuraEnabled
    public static List<ActionPlan> getActionPlan() {
        return [SELECT Id FROM ActionPlan ORDER BY LastModifiedDate DESC NULLS LAST LIMIT 1];
    }
    
    @AuraEnabled
    public static List<Account> getHouseholdAccounts() {
        return [SELECT Id, Name FROM Account WHERE Name LIKE '%Adams Household%' LIMIT 1];
    }
    
    @AuraEnabled
    public static List<Account> getAnyHouseholdAccount() {
        return [SELECT Id, Name FROM Account WHERE RecordTypeId IN (SELECT Id FROM RecordType WHERE DeveloperName = 'IndustriesHousehold') ORDER BY LastModifiedDate DESC NULLS LAST LIMIT 1];
    }
    
    @AuraEnabled
    public static List<FinancialDeal> getFinancialDeal() {
        return [SELECT Id, Name FROM FinancialDeal ORDER BY LastModifiedDate DESC NULLS LAST LIMIT 1];
    }
    
}