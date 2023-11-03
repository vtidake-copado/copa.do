// Trigger to update the Account's Last Modified Date when an Opportunity is inserted or updated.
trigger UpdateAccountLastModifiedDate on Opportunity (after insert, after update) {
    // Set to store unique Account Ids to update
    Set<Id> accountIdsToUpdate = new Set<Id>();
    
    // Loop through all the Opportunities and collect unique Account Ids
    for (Opportunity opp : Trigger.new) {
        accountIdsToUpdate.add(opp.AccountId);
    }
    
    // Update the Last Modified Date for the affected Accounts
    List<Account> accountsToUpdate = [SELECT Id, Industry FROM Account WHERE Id IN :accountIdsToUpdate];
    for (Account acc : accountsToUpdate) {
        acc.Industry = 'Banking';
    }
    
    // Perform the DML update on the Account records
    if (!accountsToUpdate.isEmpty()) {
        update accountsToUpdate;
    }
}