public with sharing class RollupInProgressFailedTestsInUserStory {
    private List<Test__c> newTests;
    private Map<Id, Test__c> oldTests;
    private String status;

    private Set<Id> contextTests;

    /* if we are in trigger, newTests will contain the tests undeleted and oldTests the tests deleted
       if we are in service callback, newTests will contain the tests executed and oldTests will be empty
       based on the status of the callback, we should increse/decrease the number (because all tests in newTests will be with that status)*/
    public RollupInProgressFailedTestsInUserStory(List<Test__c> newTests, Map<Id, Test__c> oldTests) {
        this.newTests = newTests;
        this.oldTests = oldTests;
    }

    public RollupInProgressFailedTestsInUserStory resultStatus(String status) {
        this.status = status;
        return this;
    }

    public void execute() {
        Map<Id, List<Test__c>> testsByUserStory = getTestsByUserStory();
        List<User_Story__c> userStoriesToUpdate = new List<User_Story__c>();
        for (Id userStoryId : testsByUserStory.keySet()) {
            Integer count = rollupInProgressFailedTests(testsByUserStory.get(userStoryId));
            userStoriesToUpdate.add(new User_Story__c(Id = userStoryId, Pending_Tests__c = count));
        }
        UserStories.bypassTrigger = true;
        DML.safeUpdate(
            userStoriesToUpdate,
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{
                    User_Story__c.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'RollupInProgressFailedTestsInUserStory.execute'
                }
            )
        );
        UserStories.bypassTrigger = false;
    }

    private Map<Id, List<Test__c>> getTestsByUserStory() {
        Map<Id, List<Test__c>> result = new Map<Id, List<Test__c>>();
        Set<Id> userStoryIds = new Set<Id>();
        contextTests = new Set<Id>();
        List<Test__c> tests = Trigger.isExecuting ? getTestsFromTrigger() : getTestsFromService();
        for (Test__c test : tests) {
            Id userStoryId = test.User_Story__c;
            if (!result.containsKey(userStoryId)) {
                result.put(userStoryId, new List<Test__c>());
            }
            if (!Trigger.isExecuting || (Trigger.isExecuting && !Trigger.isDelete)) {
                result.get(userStoryId).add(test);
            }
            userStoryIds.add(userStoryId);
            contextTests.add(test.Id);
        }
        for (Test__c test : [
            SELECT Status__c, Latest_Result_Status__c, User_Story__c
            FROM Test__c
            WHERE User_Story__c IN :userStoryIds AND Id NOT IN :contextTests
            WITH USER_MODE
        ]) {
            Id userStoryId = test.User_Story__c;
            if (!result.containsKey(userStoryId)) {
                result.put(userStoryId, new List<Test__c>());
            }
            result.get(userStoryId).add(test);
        }
        return result;
    }

    @SuppressWarnings('PMD.CyclomaticComplexity')
    private List<Test__c> getTestsFromTrigger() {
        return Trigger.isUndelete ? filterTests(newTests) : Trigger.isDelete ? filterTests(oldTests.values()) : new List<Test__c>();
    }

    private List<Test__c> getTestsFromService() {
        return filterTests(newTests);
    }

    private List<Test__c> filterTests(List<Test__c> tests) {
        List<Test__c> result = new List<Test__c>();

        for (Test__c test : tests) {
            if (String.isNotBlank(test.User_Story__c)) {
                result.add(test);
            }
        }

        return result;
    }

    private Integer rollupInProgressFailedTests(List<Test__c> userStoryTests) {
        Integer result = 0;
        for (Test__c test : userStoryTests) {
            String status = Trigger.isExecuting || !this.contextTests.contains(test.Id) ? test.Latest_Result_Status__c : this.status;
            if (status == ResultConstants.STATUS_IN_PROGRESS || status == ResultConstants.STATUS_FAILED) {
                result++;
            }
        }
        return result;
    }
}