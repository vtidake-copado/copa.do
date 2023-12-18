trigger AccountDefaultDescriptionDOWNTIME on Account (before insert) {
    for(Account a : Trigger.New) {
        a = AccountOperationsDOWNTIME.setDefaultDescription(a);
    }   
}