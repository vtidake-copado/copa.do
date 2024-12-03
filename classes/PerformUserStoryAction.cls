public with sharing class PerformUserStoryAction {
    // PUBLIC

    @AuraEnabled(cacheable=true)
    public static void startActionFlow(Id storyId, List<Id> actionIds, Id snapshotId, String actionType) {
        Map<String, Object> inputs = new Map<String, Object>{
            'StoryId' => storyId,
            'ActionIds' => actionIds,
            'SnapshotId' => snapshotId,
            'ActionType' => actionType
        };
        new Flow.Interview.PerformUserStoryActions(inputs).start();
    }

    @AuraEnabled(cacheable=true)
    public static List<Git_Org_Commit__c> fetchCommits(List<Id> ids) {
        return new SnapshotCommitsSelector().byIds(new Set<Id>(ids));
    }

    @InvocableMethod(label='Perform User Story Action' description='Perform specified action callout')
    public static void doCallout(List<ActionParameter> parameter) {
        // Note: Using Queueable as callout can't be made from autolaunched flow apex action
        System.enqueueJob(new PerformUserStoryCallout(parameter[0].storyId, parameter[0].commitId, parameter[0].actionType));
    }

    @AuraEnabled(cacheable=false)
    public static Copado_Notification__c getCopadoNotification(String snapshotId) {
        List<Copado_Notification__c> cnList = [
            SELECT Id, isFinished__c, Matching_Key__c, Message__c, ParentId__c, status__c, isSuccess__c, Type__c
            FROM Copado_Notification__c
            WHERE Type__c = 'GitCommit' AND OwnerId = :UserInfo.getUserId() AND ParentId__c = :snapshotId
            WITH USER_MODE
            ORDER BY CreatedDate DESC
            LIMIT 1
        ];
        return cnList.size() > 0 ? cnList[0] : null;
    }

    // INNER

    public class ActionParameter {
        @InvocableVariable
        public Id storyId;

        @InvocableVariable
        public Id commitId;

        @InvocableVariable
        public String actionType;
    }
}