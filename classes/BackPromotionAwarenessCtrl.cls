public with sharing class BackPromotionAwarenessCtrl {

    private static final String SYSTEM_PROPERTY_API_NAME = 'backPromotionAwarenessCriteria';

    @AuraEnabled
    public static Boolean isEnviornmentOutOfSync(Id environmentId, Id pipelineId) {
        Boolean result = false;
        BackPromotionAwareness.Request request = new BackPromotionAwareness.Request(pipelineId, environmentId);
        Set<Id> userStories = BackPromotionAwareness.getOutOfSyncUserStories(request);
        if(userStories != null && userStories.size() > 0) {
            result = true;
        }
        return result;
    }

    @AuraEnabled
    public static String getCriteriaFromSystemProperty(Id pipelineId, Boolean hasEditAccess){
        SystemPropertyCriteria spCriteria;
        String uid = pipelineId + '-' + SYSTEM_PROPERTY_API_NAME;
        System_Property__c property = new SystemPropertiesSelector().byUID(uid);

        if(property == null ) {
            List<Id> triggerEnvIds = new List<Id>();
            if(hasEditAccess) {
                triggerEnvIds.add(BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId));
            }
            spCriteria = new SystemPropertyCriteria(null, JSON.serialize(new BackPromotionAwareness.Criteria(triggerEnvIds)));
        } else { 
            spCriteria = new SystemPropertyCriteria(property.Id, property?.Value__c);
        }
        return JSON.serialize(spCriteria);
    }

    @AuraEnabled
    public static String getAllEnvironmentsOfPipeline(Id pipelineId) {
        List<EnvironmentLookup> envLookups = new List<EnvironmentLookup>();
        Map<Id, Environment__c> envIdMap = new PipelineDescriptor(pipelineId).environments();
        for(Environment__c env: envIdMap.values()) {
            if(env != null) {
                envLookups.add(new EnvironmentLookup(env.Id, env.name));
            }
        } 
        return JSON.serialize(envLookups);
    }

    @AuraEnabled
    public static Id createSystemProperty(Id pipelineId, String value) {
        return BackPromotionAwareness.createSystemProperty(pipelineId, value);
    }

    public class SystemPropertyCriteria {
        public Id systemPropertyId;
        public String value;

        public SystemPropertyCriteria(Id systemPropertyId, String value) {
            this.systemPropertyId = systemPropertyId;
            this.value = value;
        }
    }

    @TestVisible
    private class EnvironmentLookup {
        public Id envId;
        public String name;

        public EnvironmentLookup(Id envId, String name) {
            this.envId = envId;
            this.name = name;
        }
    }
}