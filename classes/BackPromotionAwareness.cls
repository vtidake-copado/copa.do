public with sharing class BackPromotionAwareness {

    private static final String SYSTEM_PROPERTY_API_NAME = 'backPromotionAwarenessCriteria';

    // PUBLIC

    public static Set<Id> getOutOfSyncUserStories(Request request) {
        Set<Id> result = new Set<Id> ();
        try {
            if(request.pipelineId != null && request.environmentId != null) {
                Id lastEnvOfPipeline = getLastEnvironmentOfPipeline(request.pipelineId);
                Criteria criteria = getBackPromotionCriteria(lastEnvOfPipeline, request.pipelineId);
    
                if((criteria.triggerEnvironmentIds.size() > 0 || String.isNotBlank(criteria.userStoryFieldCriteria)) && lastEnvOfPipeline != request.environmentId) {
                    Set<Id> userStories = request.userStoryIds != null ? request.userStoryIds  : getUserStoriesReadyForBackpromote(request.pipelineId, request.environmentId);
                    if(userStories.size() > 0) {
                        result = getCriteriaFilteredUserStories(userStories, criteria);
                    }
                }
            }
        } catch (Exception e) {
            throw new ApplicationException(e.getMessage());
        }

        return result;
    }

    public static Id getLastEnvironmentOfPipeline(Id pipelineId) {
        List<Deployment_Flow_Step__c> connections = getPipelineConnectionsForPipeline(pipelineId);
        if (connections.isEmpty()) {
            throw new ApplicationException(Label.NoPipelineConnectionsFound);
        }

        Set<Id> sourceEnvs = new Set<Id> ();
        Set<Id> destinationEnvs = new Set<Id> (); 
        for(Deployment_Flow_Step__c pipelineConnection: connections) {
            sourceEnvs.add(pipelineConnection.Source_Environment__c);
            destinationEnvs.add(pipelineConnection.Destination_Environment__c);
        }

        for(Id destinationId: destinationEnvs) {
            if(!sourceEnvs.contains(destinationId)) {
                return destinationId;
            }
        }
        throw new ApplicationException(Label.InvalidPipelineStructure);
    }

    public static Id createSystemProperty(Id pipelineId, String value) {
        String pipelineName = new PipelineSelector().getNamebyId(new Set<Id>{ pipelineId })[0].Name;
        System_Property__c systemProperty = new System_Property__c();
        systemProperty.API_Name__c = SYSTEM_PROPERTY_API_NAME;
        systemProperty.Name = reduceCharacters(pipelineName, SYSTEM_PROPERTY_API_NAME);
        systemProperty.Pipeline__c = pipelineId;
        systemProperty.Value__c = value;
        systemProperty.Is_Public__c = true;
        DML.insertAsSystem(systemProperty, 'Failed to create system property record.');

        createSystemPropertySharing(systemProperty.Id);
        return systemProperty.Id;
    }

    // PRIVATE 

    private static Criteria getBackPromotionCriteria(Id lastEnvOfPipeline, Id pipelineId) {
        Criteria result = new Criteria();
        String criteriaValue = getCriteriaFromSystemProperty(pipelineId);
        if(String.isNotBlank(criteriaValue)) {
            result = (Criteria) JSON.deserialize(criteriaValue, Criteria.class);
        } else if(Schema.getGlobalDescribe().get(System_Property__c.SObjectType.getDescribe().getName()).getDescribe().isCreateable()){
            result = new Criteria(new List<Id> { lastEnvOfPipeline });
            createSystemProperty(pipelineId, JSON.serialize(result));
        }
        return result;
    }

    private static List<Deployment_Flow_Step__c> getPipelineConnectionsForPipeline(Id pipelineId) {
        return [
            SELECT Source_Environment__c, Destination_Environment__c
            FROM Deployment_Flow_Step__c
            WHERE Deployment_Flow__c = :pipelineId
            WITH USER_MODE
        ];
    }

    private static Set<Id> getCriteriaFilteredUserStories(Set<Id> userStoryIds, Criteria criteria) {
        String promotedUserStoryQuery = 'SELECT User_Story__c FROM Promoted_User_Story__c WHERE Promotion__r.Status__c = \'Completed\' AND User_Story__c IN :userStoryIds';

        Set<Id> result = new Set<Id> ();
        List<Id> triggerEnvironmentIds = criteria.triggerEnvironmentIds;
        if(triggerEnvironmentIds?.size() > 0) {
            promotedUserStoryQuery += ' AND Promotion__r.Destination_Environment__c IN :triggerEnvironmentIds';
        }   
        
        String query = 'SELECT Id FROM User_Story__c WHERE Id IN ( ' + promotedUserStoryQuery + ' )';
        if(String.isNotBlank(criteria.userStoryFieldCriteria)) {
            query = query + ' AND ' + criteria.userStoryFieldCriteria;
        }

        List<User_Story__c> userStories = Database.query(query);
        for (User_Story__c us : userStories) {
            result.add(us.Id);
        }
        return result;
    }

    private static Set<Id> getUserStoriesReadyForBackpromote(Id pipelineId, Id environmentId) {
        Promotions.CalculationServiceRequest request = new Promotions.CalculationServiceRequest();
        request.environmentId = environmentId;
        request.pipelineId = pipelineId;

        Promotions.CalculationServiceResult calculationResult = Promotions.CalculationService.calculateBackwardPromotions(request);
        return calculationResult.userStoryIds;
    }

    private static String getCriteriaFromSystemProperty(Id pipelineId) {
        List<String> dynamicExpressions = new List<String>();
        dynamicExpressions.add('{$Context.Property.'+ SYSTEM_PROPERTY_API_NAME +'}');
        Jobs.DynamicExpressionEvaluateRequest dynamicExpressionRequest = new Jobs.DynamicExpressionEvaluateRequest(pipelineId, dynamicExpressions);
        List<Jobs.DynamicExpressionEvaluateResult> responses = Jobs.DynamicExpression.evaluate(dynamicExpressionRequest);
        return responses[0].value;
    }

    private static void createSystemPropertySharing(Id systemPropertyId) {
        Id allUsersGroupId = [SELECT Id FROM Group WHERE Type = 'Organization' LIMIT 1].Id;
        System_Property__Share sps = new System_Property__Share(
            ParentId = systemPropertyId,
            UserOrGroupId = allUsersGroupId,
            RowCause = Schema.System_Property__Share.RowCause.isPublic__c,
            AccessLevel = 'Edit'
        );

        DML.insertAsSystem(sps, 'Failed to create system property sharing records');
    }

    private static String reduceCharacters(String pipelineName, String apiName) {
        return (pipelineName.length() > 45 ? ( pipelineName.substring(0, 44) + '...') : pipelineName ) + ' - ' + apiName;
    }

    // INNER CLASS

    public class Criteria {
        public List<Id> triggerEnvironmentIds = new List<Id>();
        public String userStoryFieldCriteria = '';

        public Criteria() {}

        public Criteria(List<Id> envIds) {
            this.triggerEnvironmentIds = envIds;
        }

        public Criteria(List<Id> envIds, String userStoryFieldCriteria) {
            this.triggerEnvironmentIds = envIds;
            this.userStoryFieldCriteria = userStoryFieldCriteria;
        }

    }

    public class Request {
        public Id pipelineId;
        public Id environmentId;
        public Set<Id> userStoryIds;

        public Request(Id pipelineId, Id environmentId) {
            this.pipelineId = pipelineId;
            this.environmentId = environmentId;
        }
    }
}