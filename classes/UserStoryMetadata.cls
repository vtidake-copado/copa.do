@IsTest
public with sharing class UserStoryMetadata extends DomainBuilder {
    public UserStoryMetadata() {
        super(User_Story_Metadata__c.SObjectType);
    }

    public UserStoryMetadata name(String name) {
        return (UserStoryMetadata) set(User_Story_Metadata__c.Metadata_API_Name__c, name);
    }

    public UserStoryMetadata type(String type) {
        return (UserStoryMetadata) set(User_Story_Metadata__c.Type__c, type);
    }

    public UserStoryMetadata directory(String directory) {
        return (UserStoryMetadata) set(User_Story_Metadata__c.ModuleDirectory__c, directory);
    }

    public UserStoryMetadata userStoryId(Id userStoryId) {
        return (UserStoryMetadata) set(User_Story_Metadata__c.User_Story__c, userStoryId);
    }

    public UserStoryMetadata action(String action) {
        return (UserStoryMetadata) set(User_Story_Metadata__c.Action__c, action);
    }

    public UserStoryMetadata category(String category) {
        return (UserStoryMetadata) set(User_Story_Metadata__c.Category__c, category);
    }

    public UserStoryMetadata userStory(UserStory userStory) {
        setParent(User_Story_Metadata__c.User_Story__c, userStory);
        return this;
    }
}