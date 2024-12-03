@isTest
private class GetPrefetchedStepIfEnabledServiceImTest {
    
    @TestSetup
    private static void setupData() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().functions())
            .persist();

        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
        }
    }

    private static User getUser() {
        return [SELECT Id, Email, Name, LastName, Username FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }


    @isTest
    private static void testExecute(){
        System.runAs(getUser()){
            Git_Repository__c repository = (Git_Repository__c) new Repository().persist();
            Deployment_Flow__c pipeline = (Deployment_Flow__c) new Pipeline()
                                                                    .repository(repository.Id)
                                                                    .add( new SystemProperty()
                                                                                .apiName('PreFetchedRepository')
                                                                                .value('{ "ttl": 1440, "volumeSize": 5, "volumeAmount": 7 }'))
                                                                    .persist();

            // Exercise
            Test.startTest();
                Jobs.GetPrefetchedStepIfEnabledRequest request = new Jobs.GetPrefetchedStepIfEnabledRequest(pipeline.Id);
                Jobs.ExecutionStep result = Jobs.Execution.getPrefetchedStepIfEnabled(request);
            Test.stopTest();

            Assert.isNotNull(result,'Execution Step should not be null');
            Assert.areEqual(1,result.steps.size(),'Should have atleast 1 step');
            Assert.areEqual('before',result.sequence,'Sequence should be before');
        }
    }

    @isTest
    private static void testExecuteNotSP(){
        System.runAs(getUser()){
            Git_Repository__c repository = (Git_Repository__c) new Repository().persist();
            Deployment_Flow__c pipeline = (Deployment_Flow__c) new Pipeline()
                                                                    .repository(repository.Id)
                                                                    .persist();

            // Exercise
            Test.startTest();
                Jobs.GetPrefetchedStepIfEnabledRequest request = new Jobs.GetPrefetchedStepIfEnabledRequest(pipeline.Id);
                Jobs.ExecutionStep result = GetPrefetchedStepIfEnabledServiceImpl.execute(request);
            Test.stopTest();

            Assert.isNull(result,'Execution Step should be null');
        }
    }
}