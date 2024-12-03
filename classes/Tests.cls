@SuppressWarnings('PMD.CyclomaticComplexity')
public with sharing class Tests extends fflib_SObjectDomain {
    // CTOR

    public Tests(List<Test__c> records) {
        super(records);
    }

    // PUBLIC

    public override void onBeforeInsert() {
        new UpsertTestsAcceptanceCriteria((List<Test__c>) records, null).execute();
    }

    public override void onBeforeUpdate(Map<Id, SObject> oldTests) {
        new UpsertTestsAcceptanceCriteria((List<Test__c>) records, (Map<Id, Test__c>) oldTests).execute();
    }

    public override void onAfterDelete() {
        new RollupInProgressFailedTestsInUserStory((List<Test__c>) records, (Map<Id, Test__c>) Trigger.oldMap).execute();
    }

    public override void onAfterUndelete() {
        new RollupInProgressFailedTestsInUserStory((List<Test__c>) records, new Map<Id, Test__c>()).execute();
    }

    public static void updateWithExecution(Map<String, List<Id>> testsByJobExecution) {
        List<Test__c> tests = new List<Test__c>();

        for (String jobExecutionId : testsByJobExecution.keyset()) {
            for (Id testId : testsByJobExecution.get(jobExecutionId)) {
                tests.add(new Test__c(Id = testId, LatestJobExecution__c = jobExecutionId));
            }
        }

        DML.safeUpdate(
            tests,
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{ Test__c.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(), 'Tests.updateWithExecution' }
            )
        );
    }

    // INNER

    public class Constructor implements fflib_SObjectDomain.IConstructable {
        public fflib_SObjectDomain construct(List<SObject> records) {
            return new Tests(records);
        }
    }
}