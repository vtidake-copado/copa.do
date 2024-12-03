public with sharing class MetadataServiceImpl {
    // PUBLIC
    public static Promotions.MetadataServiceResult retrieve(Promotions.MetadataServiceRequest request) {
        Integer queryRowThreshold = Limits.getLimitQueryRows() - Limits.getQueryRows();
        Promotions.MetadataServiceResult result = new Promotions.MetadataServiceResult();
        result.userStoryMetadatas = [
            SELECT
                Id,
                User_Story__c,
                Metadata_API_Name__c,
                Status_Icon__c,
                Status__c,
                Unique_ID__c,
                Action__c,
                Last_Commit_Date__c,
                Category__c,
                JsonInformation__c,
                ModuleDirectory__c,
                Type__c
            FROM User_Story_Metadata__c
            WHERE User_Story__c IN :request.userStoryIds
            WITH USER_MODE
            LIMIT :queryRowThreshold
        ];
        return result;
    }
}