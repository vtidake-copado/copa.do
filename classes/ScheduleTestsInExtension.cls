@SuppressWarnings('PMD.AvoidGlobalModifier,PMD.FieldNamingConventions')
global with sharing class ScheduleTestsInExtension {
    //constants
    private Id TEXT_EXECUTION_RECORD_TYPE_ID = Schema.SObjectType.Scheduled_Job__c.getRecordTypeInfosByName().get('Test Execution').getRecordTypeId();

    //non-constants
    private List<Test__c> tests;
    private Map<Id, Id> jobIdByTestId;
    private Id credentialId;
    private String cronExpression;
    
    private List<String> testToolsAvailable {
        get {  
            if(null == testToolsAvailable){
                testToolsAvailable = new List<String>();

                List<TestTool__mdt> testTools = new TestToolsSelector().getAll();
                for (TestTool__mdt testTool : testTools) {
                    testToolsAvailable.add(testTool.MasterLabel);
                }
            }
            return testToolsAvailable;
        } private set;
    }

    // GLOBAL

    // CTOR

    global ScheduleTestsInExtension(List<Test__c> tests, Id credentialId, String cronExpression) {
        this.tests = tests;
        this.credentialId = credentialId;
        this.cronExpression = cronExpression;
    }

    global List<Scheduled_Job__c> execute() {
        return createScheduleJobs(tests)
                    .callScheduleService(tests);
    }

    // PRIVATE

    private ScheduleTestsInExtension createScheduleJobs(List<Test__c> tests){
        List<Scheduled_Job__c> jobs = new List<Scheduled_Job__c>();
        for(Test__c test : tests){
            jobs.add(
                new Scheduled_Job__c(
                    Name = test.Name,
                    Test__c = test.Id,
                    Cron_Expression__c = this.cronExpression,
                    RecordTypeId = TEXT_EXECUTION_RECORD_TYPE_ID
                )
            );
        }
        Database.insert(jobs, true, AccessLevel.USER_MODE);
        jobIdByTestId = new Map<Id, Id>();
        for(Scheduled_Job__c job : jobs){
            jobIdByTestId.put(job.Test__c, job.Id);
        }
        return this;
    }

    private String defineTestTool(Test__c test){
        String tool = testToolsAvailable.contains(test.ExtensionConfiguration__r.ExtensionTool__c)
                ? test.ExtensionConfiguration__r.ExtensionTool__c
                    : '';
        return tool;
    }

    private List<Scheduled_Job__c> callScheduleService(List<Test__c> tests) {
        List<RunTestsAction.Request> requests = new List<RunTestsAction.Request>();
        for (Test__c test : tests) {
            requests.add(
                prepareRequest(
                    defineTestTool(test),
                    test
                )
            );
        }
        return executionsFrom(
            ScheduleTestsAction.execute(requests)
        );
    }

    private RunTestsAction.Request prepareRequest(String tool, Test__c test){
        return new RunTestsAction.Request()
            .tool(tool)
            .context(new List<Id>{ test.Id })
            .acceptanceCriteria(test.AcceptanceCriteria__c)
            .credential(credentialId)
            .cronExpression(cronExpression)
            .scheduledJob(jobIdByTestId.get(test.Id));
    }

    private static List<Scheduled_Job__c> executionsFrom(List<RunTestsAction.Response> responses) {
        List<Scheduled_Job__c> result = new List<Scheduled_Job__c>();
        
        for (RunTestsAction.Response response : responses) {
            result.add(response.scheduledJob);
        }
        return result;
    }
}