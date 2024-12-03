public with sharing class UserStoryCommitServiceImpl {
    // PUBLIC
    public static Promotions.UserStoryCommitServiceResult retrieve(Promotions.UserStoryCommitServiceRequest request) {
        Integer queryRowThreshold = Limits.getLimitQueryRows() - Limits.getQueryRows();
        Promotions.UserStoryCommitServiceResult result = new Promotions.UserStoryCommitServiceResult();
        result.userStoryCommits = [
            SELECT Id, User_Story__c, Snapshot_Commit__c, External_Id__c, View_in_Git__c, CommitMessage__c, LastJobExecutionId__c, Status__c
            FROM User_Story_Commit__c
            WHERE User_Story__c IN :request.userStoryIds
            WITH USER_MODE
            LIMIT :queryRowThreshold
        ];
        return result;
    }
}