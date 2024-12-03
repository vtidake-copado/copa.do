public with sharing virtual class ACPromotionDeploymentToRunQG extends ACPromotionToRunQG {
    // PROTECTED

    protected override AutomationConnector createConnector(Actions.RunTestRequest request) {
        ACPromotionDeploymentToRunQG connector = new ACPromotionDeploymentToRunQG();
        connector.request = request;
        return connector;
    }

    protected override String getEnvironment() {
        Promotion__c promotion = (Promotion__c) actionRecord;
        return promotion.Destination_Environment__c;
    }

    protected override String getParentContext(Id actionId) {
        Id result;
        if (String.isNotBlank(jobExecutionPayload)) {
            JobPayload payload = (JobPayload) JSON.deserialize(jobExecutionPayload, JobPayload.class);
            result = payload.deploymentId;
        }
        return result;
    }

    protected override Boolean assertQualityRuleIsMatching() {
        if (isBackPromotionOrValidation()) {
            return false;
        }
        Promotion__c promotion = (Promotion__c) actionRecord;
        Quality.MatchingRulesRequest qualityRequest = new Quality.MatchingRulesRequest();
        qualityRequest.action = ActionConstants.PROMOTION_DEPLOYMENT;
        qualityRequest.pipeline = new FindPipeline().fromObject(promotion);
        qualityRequest.platform = promotion.Platform__c;
        qualityRequest.templateName = new ActionTemplate(ActionConstants.PROMOTION_DEPLOYMENT).promotion(promotion).getApiName();
        qualityRequest.environment = promotion.Destination_Environment__c;
        qualityRequest.metadataChanges = getMetadata(promotion);
        Quality.MatchingRulesResult matchingRulesResult = Quality.matchingRules(qualityRequest);
        for (Quality_Gate_Rule_Condition__c condition : matchingRulesResult.qualityGates) {
            if (condition.Id == automationRule.Quality_Gate_Rule_Condition__c) {
                return true;
            }
        }
        return false;
    }

    // PRIVATE

    private Boolean isBackPromotionOrValidation() {
        Promotion__c promotion = (Promotion__c) actionRecord;
        Boolean isValidation = false;
        if (String.isNotBlank(jobExecutionPayload)) {
            JobPayload payload = (JobPayload) JSON.deserialize(jobExecutionPayload, JobPayload.class);
            isValidation = payload.deploymentDryRun != null ? payload.deploymentDryRun : false;
        }
        return promotion.Back_Promotion__c || isValidation;
    }

    private List<User_Story_Metadata__c> getMetadata(Promotion__c promotion) {
        Set<Id> userStories = new Set<Id>();
        for (Promoted_User_Story__c promotedUserStory : promotion.Promoted_User_Stories__r) {
            userStories.add(promotedUserStory.User_Story__c);
        }
        return [
            SELECT
                Id,
                Metadata_API_Name__c,
                Type__c,
                ModuleDirectory__c,
                Action__c,
                Category__c,
                JsonInformation__c,
                User_Story__c,
                User_Story__r.Name
            FROM User_Story_Metadata__c
            WHERE User_Story__c IN :userStories
            WITH USER_MODE
        ];
    }

    private class JobPayload {
        private String deploymentId;
        private Boolean deploymentDryRun;
    }
}