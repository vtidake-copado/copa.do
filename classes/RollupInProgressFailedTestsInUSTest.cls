@IsTest
private with sharing class RollupInProgressFailedTestsInUSTest {
    private static final String EXTENSION_CONFIGURATION_NAME = 'Extension Configuration 1';
    private static final String TEST_TOOL_NAME = 'Manual Tests';
    private static final String MOCK_ACTION_CALLBACK = 'MockRunTestsActionCallback';
    private static final String MOCK_ACCEPTANCE_CRITERIA = '{"criteria1": "mockCriteria1", "criteria2": 1}';

    @TestSetup
    private static void setup() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().qualityGatesAdmin())
            .assign(new PermissionSetAssignment_t().configureAutomations())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    @IsTest
    private static void execute() {
        System.runAs(getRunAsUser()) {
            // Setup
            createMockTestTools();
            createMockNotifications();
            Flow.mockResponse = flowCompletionEvent(true, '', '');
            List<Id> testIds = new List<Id>(new Map<Id, Test__c>([SELECT Id FROM Test__c]).keySet());
            Actions.RunTestRequest request = new Actions.RunTestRequest();
            request.tool = TEST_TOOL_NAME;
            request.contextIds = testIds;
            request.acceptanceCriteria = MOCK_ACCEPTANCE_CRITERIA;
            request.extensionConfigurationId = getExtensionConfiguration().id;

            // Exercise
            Test.startTest();
            Actions.RunTestResult result = Actions.RunTestService.execute(request);
            new RunTestServiceImpl().execute(result.jobExecution, JobExecutionConstants.STATUS_SUCCESSFUL);
            Test.stopTest();

            // Verify
            User_Story__c updatedUserStory = [SELECT Pending_Tests__c FROM User_Story__c LIMIT 1];
            System.assertEquals(0, updatedUserStory.Pending_Tests__c, 'Tests for user story should be completed succesfully');
        }
    }

    @IsTest
    private static void executeFailed() {
        System.runAs(getRunAsUser()) {
            // Setup
            createMockTestTools();
            createMockNotifications();
            Flow.mockResponse = flowCompletionEvent(false, '', '');
            List<Id> testIds = new List<Id>(new Map<Id, Test__c>([SELECT Id FROM Test__c]).keySet());
            Actions.RunTestRequest request = new Actions.RunTestRequest();
            request.tool = TEST_TOOL_NAME;
            request.contextIds = testIds;
            request.acceptanceCriteria = MOCK_ACCEPTANCE_CRITERIA;
            request.extensionConfigurationId = getExtensionConfiguration().id;

            // Exercise
            Test.startTest();
            Actions.RunTestResult result = Actions.RunTestService.execute(request);
            new RunTestServiceImpl().execute(result.jobExecution, JobExecutionConstants.STATUS_ERROR);
            Test.stopTest();

            // Verify
            User_Story__c updatedUserStory = [SELECT Pending_Tests__c FROM User_Story__c LIMIT 1];
            System.assertEquals(2, updatedUserStory.Pending_Tests__c, 'Tests for user story should be failed');
        }
    }

    private static void createData() {
        new JobTemplate().name('MockTemplate').add(new JobStep());
        new JobTemplate().name('Promotion_Deployment_Template').mockAutomation(ActionConstants.PROMOTION_DEPLOYMENT).add(new JobStep()).persist();

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
                    .add(new UserStory().title('US1').credential(dev1Credential).add(new UserStoryMetadata().name('TestClass').type('ApexClass')))
                    .add(new UserStory().title('US2').credential(dev1Credential).add(new UserStoryMetadata().name('TestClass').type('ApexClass')))
                    .add(new UserStory().title('US3').credential(dev1Credential).add(new UserStoryMetadata().name('TestClass').type('ApexClass')))
            )
            .persist();

        User_Story__c userStory = getUserStory('US1');
        Promotion__c promotion = (Promotion__c) new Promotion().projectId([SELECT Id FROM Project__c LIMIT 1].Id).sourceEnvId(dev1.Id).persist();
        insert new Promoted_User_Story__c(User_Story__c = userStory.Id, Promotion__c = promotion.Id);

        createExtensionConfiguration();

        ExtensionConfiguration__c extensionConfiguration = getExtensionConfiguration();

        List<Test__c> tests = new List<Test__c>();
        Test__c test1 = new Test__c(
            Name = 't1',
            ExtensionConfiguration__c = extensionConfiguration.Id,
            User_Story__c = userStory.Id,
            ReadyToRun__c = true
        );
        Test__c test2 = new Test__c(
            Name = 't2',
            ExtensionConfiguration__c = extensionConfiguration.Id,
            User_Story__c = userStory.Id,
            ReadyToRun__c = true
        );
        tests.add(test1);
        tests.add(test2);

        insert tests;
    }

    private static void createMockTestTools() {
        String jobTemplateApiName = 'MockTemplate_1';
        TestToolsSelector.mock(
            new List<TestTool__mdt>{
                new TestTool__mdt(
                    MasterLabel = TEST_TOOL_NAME,
                    JobTemplate__c = jobTemplateApiName,
                    TestType__c = 'Mock Type',
                    Automate_Test_Readiness__c = true,
                    Test_Readiness_Logic__c = ''
                )
            }
        );
    }

    private static void createExtensionConfiguration() {
        insert new ExtensionConfiguration__c(
            Name = 'EC 1',
            ExtensionApplication__c = 'Test',
            ExtensionTool__c = TEST_TOOL_NAME,
            AcceptanceCriteria__c = MOCK_ACCEPTANCE_CRITERIA,
            Active__c = true
        );
    }

    private static void createMockNotifications() {
        NotificationsSelector.mockNotifications = new List<MC_Notification__mdt>{
            new MC_Notification__mdt(
                DeveloperName = 'Test_Success',
                Active__c = true,
                Subject__c = '{TestName} - Success',
                Template__c = 'Hi {UserName},<br/><br/>The test <b> <a href=”{TestNameLink}”>{TestName}</a></b> ended with a Success status. Please refer to the result <b><a href=”{TestResultLink}”>{TestResultName}</a></b> for further details.'
            ),
            new MC_Notification__mdt(
                DeveloperName = 'Quality_Gate_Success',
                Active__c = true,
                Subject__c = '{QualityGateRuleName} - Success',
                Template__c = 'Hi {UserName},<br/><br/>The Quality Gate <b> <a href=”{QualityGateRuleJobStepLink}”> {QualityGateRuleName}</a></b> for this <b> <a href=”{ParentContextLink}”>{ParentContextName}</a></b> ended with a Success status. Please refer to the result <b><a href=”{ConsolidatedResultLink}”>{ConsolidatedResultName}</a></b> for further details.'
            )
        };
    }

    private static ExtensionConfiguration__c getExtensionConfiguration() {
        return [SELECT Id FROM ExtensionConfiguration__c LIMIT 1];
    }

    private static Promotion__c getPromotion() {
        return [SELECT Id FROM Promotion__c LIMIT 1];
    }

    private static User_Story__c getUserStory(String userStoryTitle) {
        return [SELECT Id FROM User_Story__c WHERE User_Story_Title__c = :userStoryTitle LIMIT 1];
    }

    private static Environment__c getEnvironment(String name) {
        return [SELECT Id FROM Environment__c WHERE Name = :name LIMIT 1];
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Deployment_Flow__c getPipeline() {
        return [SELECT Id FROM Deployment_Flow__c LIMIT 1];
    }

    private static Quality_Gate_Rule_Condition__c getQualityGateRuleCondition() {
        return [SELECT Id FROM Quality_Gate_Rule_Condition__c LIMIT 1];
    }

    private static Event__e flowCompletionEvent(Boolean isSuccess, String errorMessage, String data) {
        Event__e result = new Event__e();
        result.Topic_Uri__c = OnJobStepComplete.STEP_ENDPOINT;
        result.Payload__c = Json.serialize(new OnJobStepComplete.EventPayload(isSuccess, errorMessage, data));

        return result;
    }
}