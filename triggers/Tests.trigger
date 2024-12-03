trigger Tests on Test__c(before insert, before update, after delete, after undelete) {
    fflib_SObjectDomain.triggerHandler(Tests.class);
}