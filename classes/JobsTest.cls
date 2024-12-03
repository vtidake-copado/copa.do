@SuppressWarnings('PMD.CyclomaticComplexity')
@IsTest
private class JobsTest {

    @TestSetup 
    private static void setupData(){
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().functions())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().qualityGatesAdmin())
            .assign(new PermissionSetAssignment_t().configureAutomations())
            .assign(new PermissionSetAssignment_t().executeAutomations())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    private static void createData() {
        new JobTemplate().name('Jobs_Template').add(new JobStep());
        
        Credential dev1Credential = new Credential();
        Environment dev1 = new Environment().name('dev1').type('Sandbox').platform('Other').add(dev1Credential);
        Environment dev2 = new Environment().name('dev2').type('Sandbox').platform('Other').add(new Credential());
        Credential intCredential = new Credential();
        Environment integration = new Environment().name('int').type('Sandbox').platform('Other').add(intCredential);
        Environment uat = new Environment().name('uat').type('Sandbox').platform('Other').add(new Credential());
        Environment prod = new Environment().name('prod').type('Sandbox').platform('Other').add(new Credential());

        new Pipeline()
            .active(true)
            .mainBranch('main')
            .setPlatform('Other')
            .add(new Connection(dev1, integration).branch('dev1'))
            .add(new Connection(dev2, integration).branch('dev2'))
            .add(new Connection(integration, uat).branch('int'))
            .add(new Connection(uat, prod).branch('uat'))
            .add(
                new Project()
            )
            .persist()
        ;
    }

    private static User getUser() {
        return [SELECT Id, Email FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Id getPipelineId() {
        return [SELECT Id FROM Deployment_Flow__c LIMIT 1].Id;
    }

    private static String getTemplateAPIName(){
        return [SELECT ApiName__c FROM JobTemplate__c WHERE Name = 'Jobs_Template' LIMIT 1].ApiName__c;
    }

    @isTest
    private static void testEmptyConstructors(){
        System.runAs(getUser()){
            Jobs.ExecutionStep es = new Jobs.ExecutionStep();
            Jobs.ExecutionRequest er = new Jobs.ExecutionRequest(UserInfo.getUserId(),'');
            Jobs.DynamicExpressionEvaluateResult der = new Jobs.DynamicExpressionEvaluateResult('{$User.Name}');
        }
    }

    @isTest
    private static void testExecutionCreateFromTemplate(){
        System.runAs(getUser()){
            Jobs.ExecutionCreateFromTemplateRequest request = new Jobs.ExecutionCreateFromTemplateRequest();
            request.templateAPIName = getTemplateAPIName();
            request.pipelineId = getPipelineId();

            Test.startTest();
                Jobs.ExecutionCreateFromTemplateResult result = Jobs.Execution.createFromTemplate(request);
            Test.stopTest();

            Assert.isNotNull(result.jobExecution.Id,'Result Job Execution should not be null');
        }
    }

    @isTest
    private static void testExecutionCreate(){
        System.runAs(getUser()){
            Jobs.ExecutionCreateRequest request = new Jobs.ExecutionCreateRequest();
            request.pipelineId = getPipelineId();

            Test.startTest();
                Jobs.ExecutionCreateResult result = Jobs.Execution.create(request);
            Test.stopTest();

            Assert.isNotNull(result.jobExecution.Id ,'Result Job Execution should not be null');
        }
    }

    @isTest
    private static void testExecutionExecute(){
        System.runAs(getUser()){
            Jobs.ExecutionCreateFromTemplateRequest request = new Jobs.ExecutionCreateFromTemplateRequest();
            request.templateAPIName = getTemplateAPIName();
            request.pipelineId = getPipelineId();
            Jobs.ExecutionCreateFromTemplateResult result = Jobs.Execution.createFromTemplate(request);

            Test.startTest();
                Jobs.ExecutionResult eResult = Jobs.Execution.execute(new Jobs.ExecutionRequest(result.jobExecution.Id));
            Test.stopTest();

            Assert.isNotNull(eResult,'Result should not be null');
        }
    }

    @isTest
    private static void testExecutionCancel(){
        System.runAs(getUser()){
            Jobs.ExecutionCreateFromTemplateRequest request = new Jobs.ExecutionCreateFromTemplateRequest();
            request.templateAPIName = getTemplateAPIName();
            request.pipelineId = getPipelineId();
            Jobs.ExecutionCreateFromTemplateResult result = Jobs.Execution.createFromTemplate(request);

            Test.startTest();
                Jobs.ExecutionResult eResult = Jobs.Execution.cancel(result.jobExecution.Id);
            Test.stopTest();

            Assert.isNotNull(eResult,'Result should not be null');
        }
    }

    @isTest
    private static void testExecutionResume(){
        System.runAs(getUser()){
            Jobs.ExecutionCreateFromTemplateRequest request = new Jobs.ExecutionCreateFromTemplateRequest();
            request.templateAPIName = getTemplateAPIName();
            request.pipelineId = getPipelineId();
            Jobs.ExecutionCreateFromTemplateResult result = Jobs.Execution.createFromTemplate(request);

            Test.startTest();
                Jobs.ExecutionResult eResult = Jobs.Execution.resume(result.jobExecution.Id);
            Test.stopTest();

            Assert.isNotNull(eResult,'Result should not be null');
        }
    }

    @isTest
    private static void testExecutionStatus(){
        System.runAs(getUser()){
            Jobs.ExecutionCreateFromTemplateRequest request = new Jobs.ExecutionCreateFromTemplateRequest();
            request.templateAPIName = getTemplateAPIName();
            request.pipelineId = getPipelineId();
            Jobs.ExecutionCreateFromTemplateResult result = Jobs.Execution.createFromTemplate(request);

            Test.startTest();
                Jobs.StatusResult eResult = Jobs.Execution.status(result.jobExecution.Id);
            Test.stopTest();

            Assert.isNotNull(eResult,'Result should not be null');
        }
    }

    @isTest
    private static void testDynamicExpressionEvaluate(){
        System.runAs(getUser()){
            String firstNamePattern = UserInfo.getFirstName() + '*';
            List<String> dynamicExpressions = new List<String>();
            dynamicExpressions.add('{$User.Name}');
            dynamicExpressions.add('{$User.Name.matches("'+ firstNamePattern + '")}');

            Jobs.DynamicExpressionEvaluateRequest request = new Jobs.DynamicExpressionEvaluateRequest(null, dynamicExpressions);

            // Exercise
            Test.startTest();
                List<Jobs.DynamicExpressionEvaluateResult> result = Jobs.DynamicExpression.evaluate(request);
            Test.stopTest();

            // Verify
            Assert.areEqual(2, result.size(), 'There are 2 parameter values in the result.');

            Assert.areEqual(UserInfo.getName(), result[0].value, 'The values match.');
            Assert.areEqual('true', result[1].value, 'The values match.');
            Assert.areEqual(false, result[0].isSensitive, 'Parameter isn\'t sensitive');
            Assert.areEqual(false, result[1].isSensitive, 'Parameter isn\'t sensitive');
        }
    }

    @isTest
    private static void testGetPrefetchedStepIfEnabledRequest(){
        System.runAs(getUser()){

            new SystemProperty()
                .apiName('PreFetchedRepository')
                .pipeline(getPipelineId())
                .value('{ "ttl": 1440, "volumeSize": 5, "volumeAmount": 7 }')
                .persist();
            
            Test.startTest();
                Jobs.getPrefetchedStepIfEnabledRequest request = new Jobs.getPrefetchedStepIfEnabledRequest(getPipelineId());
                Jobs.ExecutionStep es = Jobs.Execution.getPrefetchedStepIfEnabled(request);
            Test.stopTest();

            Assert.isNotNull(es,'Execution Step should not be empty');
            Assert.areEqual('before', es.sequence,'The sequence should be before');
            Assert.isNotNull(es.steps,'Steps should no be empty');
        }
    }
}