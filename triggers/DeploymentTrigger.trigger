trigger DeploymentTrigger on Deployment__c(after delete, after insert, after undelete, after update, before delete, before insert, before update) {
    fflib_SObjectDomain.triggerHandler(DeploymentTriggerHandler.class);
}