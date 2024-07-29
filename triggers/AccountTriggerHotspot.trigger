trigger AccountTriggerHotspot on Account (before insert) {
    List<Contact> relatedContacts = [SELECT Id, Name FROM Contact WHERE AccountId = :Trigger.new[0].Id];
    
    for (Contact c : relatedContacts) {
        // Perform some action with the related contacts
    }
}