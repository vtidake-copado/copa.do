// AccountTrigger.apex

trigger AccountTrigger on Account (before insert) {
    for (Account acc : Trigger.new) {
        // Set the Status__c field to "Active" for new Accounts
        acc.Status__c = 'Active';
    }
}