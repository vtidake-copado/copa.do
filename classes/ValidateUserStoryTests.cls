public with sharing class ValidateUserStoryTests {
    private List<User_Story__c> userStories;
    private Id pipelineId;
    private Id environmentId;
    private String errorMessage;

    // CTOR

    public ValidateUserStoryTests(Promotion__c promotion) {
        this.userStories = new List<User_Story__c>();
        for (Promoted_User_Story__c promotedUserStory : promotion.Promoted_User_Stories__r) {
            this.userStories.add(promotedUserStory.User_Story__r);
        }
        this.pipelineId = new FindPipeline().fromObject(promotion);
        this.environmentId = promotion.Destination_Environment__c;
        this.errorMessage = Label.Failed_Tests_in_Promotion;
    }

    public ValidateUserStoryTests(User_Story__c userStory) {
        this.userStories = new List<User_Story__c>{ userStory };
        this.pipelineId = new FindPipeline().fromObject(userStory);
        this.environmentId = getDestinationEnvironmentId(userStory.Environment__c);
        this.errorMessage = Label.User_Story_Low_Quality_Error_Message;
    }

    // PUBLIC

    public void execute() {
        if (!ignoreTests()) {
            checkUserStoryTests();
        }
    }

    // PRIVATE

    private Boolean ignoreTests() {
        List<System_Property__c> properties = [
            SELECT Id, Value__c
            FROM System_Property__c
            WHERE (Pipeline__c = :pipelineId OR Environment__c = :environmentId) AND API_Name__c = :'IgnoreTestStatusForPromotion'
            WITH SECURITY_ENFORCED
            LIMIT 1
        ];
        return !properties.isEmpty() && properties[0].Value__c?.toLowerCase() == 'true';
    }

    private void checkUserStoryTests() {
        for (User_Story__c userStory : userStories) {
            if (userStory.Pending_Tests__c != null && userStory.Pending_Tests__c > 0) {
                throw new ApplicationException(this.errorMessage);
            }
        }
    }

    private Id getDestinationEnvironmentId(Id environmentId) {
        List<Deployment_Flow_Step__c> pipelineConnections = [
            SELECT Destination_Environment__c
            FROM Deployment_Flow_Step__c
            WHERE Source_Environment__c = :environmentId AND Deployment_Flow__c = :pipelineId
            WITH USER_MODE
            LIMIT 1
        ];
        return !pipelineConnections.isEmpty() ? pipelineConnections[0].Destination_Environment__c : null;
    }
}