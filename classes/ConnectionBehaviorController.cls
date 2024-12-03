public with sharing class ConnectionBehaviorController {
   
    @AuraEnabled
    public static ConnectionBehaviorWrapper validateOverrideConnectionBehavior(String connectionBehaviorId) {
        List<Environment__c> defaultConnectionBehaviorEnv = [Select ID from Environment__c Where Connection_Behavior__c = :connectionBehaviorId WITH USER_MODE];
       if(defaultConnectionBehaviorEnv?.size() > 0) {
            List<Deployment_Flow_Step__c> pipelineConnections = [Select ID, Connection_Behavior_Override__c from Deployment_Flow_Step__c Where Destination_Environment__c IN : defaultConnectionBehaviorEnv AND Connection_Behavior_Override__c != null WITH USER_MODE];
            if(pipelineConnections?.size() > 0) {
                return new ConnectionBehaviorWrapper(null, true, false);
            }
       } else {
           List<Deployment_Flow_Step__c> pipelineConnections = [Select ID, Connection_Behavior_Override__c,Destination_Environment__c from Deployment_Flow_Step__c Where Connection_Behavior_Override__c = :connectionBehaviorId WITH USER_MODE];
           // Get the default connection behavior Id for the destination environment
           if(pipelineConnections?.size() > 0) {
                // Get the destination environment's default connection behavior
                List<Environment__c> defaultConnectionBehaviorEnvironments = [Select Id,Connection_Behavior__c from Environment__c WHERE Id =: pipelineConnections.get(0).Destination_Environment__c WITH USER_MODE];
                return new ConnectionBehaviorWrapper(defaultConnectionBehaviorEnvironments.get(0).Connection_Behavior__c, false, true);
            }
       }
       return new ConnectionBehaviorWrapper(null, false, false);
    }

    public class ConnectionBehaviorWrapper {
        @AuraEnabled
        public String id;
        @AuraEnabled
        public Boolean hasOverridden;
        @AuraEnabled
        public Boolean isOverriding;

        public ConnectionBehaviorWrapper(String id, Boolean hasOverridden, Boolean isOverriding) {
            this.id = id;
            this.hasOverridden = hasOverridden;
            this.isOverriding = isOverriding;
        }
    }
}