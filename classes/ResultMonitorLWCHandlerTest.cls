@IsTest
private class ResultMonitorLWCHandlerTest {
    @TestSetup
    private static void setupData() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().functions())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().qualityGatesReadOnly())
            .persist();

        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            data();
        }
    }

    @IsTest
    private static void promotionExecutionTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            List<Environment__c> environments = [SELECT Id, Name, Type__c, Platform__c FROM Environment__c];
            Project__c project = [SELECT Id FROM Project__c LIMIT 1];
            new Promotion().projectId(project.Id).sourceEnvId(environments[0].Id).status('Draft').persist();

            Promotion__c promotion = [SELECT Id, Last_Promotion_Execution_Id__c FROM Promotion__c LIMIT 1];
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            JobExecution__c job = (JobExecution__c) new JobExecution()
                .status('In Progress')
                .template(template.Id)
                .add(
                    new JobStep()
                        .name('step1')
                        .type('Test')
                        .order(1)
                        .configJson('{"type" : "QRT"}')
                        .result(new Result().jobType('Test').status('In Progress'))
                )
                .add(
                    new JobStep()
                        .name('Fill details')
                        .type('Manual')
                        .order(2)
                        .configJson('{"type" : "QRT1"}')
                        .result(new Result().jobType('Manual').status('Not Started'))
                )
                .persist();

            promotion.Last_Promotion_Execution_Id__c = job.Id;
            update promotion;

            JobExecution__c subJob = (JobExecution__c) new JobExecution()
                .status('In Progress')
                .add(
                    new JobStep()
                        .name('Sub Step Manual')
                        .type('Manual')
                        .order(1)
                        .configJson('{"type" : "Manual"}')
                        .result(new Result().jobType('Manual').status('Success'))
                )
                .add(
                    new JobStep()
                        .name('Manual Task Step 2')
                        .type('Manual')
                        .order(2)
                        .configJson('{"type" : "Manual"}')
                        .result(new Result().jobType('Manual').status('In Progress'))
                )
                .persist();

            List<JobStep__c> step = [SELECT Sub_Job_Execution__c FROM JobStep__c WHERE Type__c = 'Test'];
            step[0].Sub_Job_Execution__c = subJob.Id;
            update step;

            // Exercise
            Test.startTest();
            String objectName = (String) SObjectType.Promotion__c.getLocalName();
            String fieldName = (String) SObjectType.Promotion__c.fields.Last_Promotion_Execution_Id__c.getLocalName();

            ResultStatusDetail actualResult = ResultMonitorLWCHandler.result(promotion.Id, objectName, fieldName);
            Test.stopTest();

            // Verify
            Id testStepResult = [SELECT Id FROM Result__c WHERE Status__c = 'In Progress' AND Job_Type__c = 'Manual' LIMIT 1].Id;
            Id manualStepResult = [SELECT Id FROM Result__c WHERE Status__c = 'Not Started' AND Job_Type__c = 'Manual' LIMIT 1].Id;

            System.assertEquals('Sample', actualResult.mainTitle, 'Same as promotion template name');
            System.assertEquals(job.Id, actualResult.jobExecutionId, 'Same as job execution id');
            System.assertEquals('step1', actualResult.resultDetails[0].jobStepLabel, 'Same as step name');
            System.assertEquals('Test', actualResult.resultDetails[0].jobStepType, 'Same as step type');
            System.assertEquals(testStepResult, actualResult.resultDetails[0].resultId, 'The result Id is of last step');
            System.assertEquals('Manual', actualResult.resultDetails[1].jobStepType, 'Same as step type');
            System.assertEquals('Not Started', actualResult.resultDetails[1].resultStatus, 'Same as result status');
            System.assertEquals(manualStepResult, actualResult.resultDetails[1].resultId, 'The result id matches');
            System.assertNotEquals(3, actualResult.resultDetails.size(), 'There should be 3 results in the actualResult');
            System.assertEquals(null, actualResult.jobExecutionErrorMessage, 'There is no error message');
        }
    }

    @IsTest
    private static void deploymentExecutionTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            List<Environment__c> environments = [SELECT Id, Name, Type__c, Platform__c FROM Environment__c];
            Project__c project = [SELECT Id FROM Project__c LIMIT 1];
            new Promotion().projectId(project.Id).sourceEnvId(environments[0].Id).status('Draft').persist();

            Promotion__c promotion = [SELECT Id, Last_Deployment_Execution_Id__c FROM Promotion__c LIMIT 1];
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            JobExecution__c job = (JobExecution__c) new JobExecution()
                .status('In Progress')
                .template(template.Id)
                .add(
                    new JobStep()
                        .name('step1')
                        .type('Function')
                        .order(1)
                        .configJson('{"functionName" : "MockedFunction"}')
                        .result(new Result().jobType('Function').status('In Progress'))
                )
                .add(
                    new JobStep()
                        .name('step2')
                        .type('Test')
                        .order(2)
                        .configJson('{"type" : "QRT"}')
                        .result(new Result().jobType('Test').status('Not Started'))
                )
                .persist();

            promotion.Last_Deployment_Execution_Id__c = job.Id;
            update promotion;

            JobExecution__c subJob = (JobExecution__c) new JobExecution()
                .status('In Progress')
                .add(
                    new JobStep()
                        .name('step1')
                        .type('Function')
                        .order(1)
                        .configJson('{"functionName" : "MockedFunction"}')
                        .result(new Result().jobType('Function').status('In Progress'))
                )
                .persist();

            List<JobStep__c> step = [SELECT Id, Sub_Job_Execution__c FROM JobStep__c WHERE Type__c = 'Test'];
            step[0].Sub_Job_Execution__c = subJob.Id;
            update step;

            // Exercise
            Test.startTest();
            String objectName = (String) SObjectType.Promotion__c.getLocalName();
            String fieldName = (String) SObjectType.Promotion__c.fields.Last_Deployment_Execution_Id__c.getLocalName();

            ResultStatusDetail actualResult = ResultMonitorLWCHandler.result(promotion.Id, objectName, fieldName);
            Test.stopTest();

            // Verify
            System.assertEquals('Sample', actualResult.mainTitle, 'Same as promotion template name');
            System.assertEquals(job.Id, actualResult.jobExecutionId, 'Same as job execution id');
            System.assertEquals('step1', actualResult.resultDetails[0].jobStepLabel, 'Same as step name');
            System.assertEquals('step2', actualResult.resultDetails[1].jobStepLabel, 'Same as step name');
            System.assertEquals('Function', actualResult.resultDetails[0].jobStepType, 'Same as step type');
            System.assertEquals('Test', actualResult.resultDetails[1].jobStepType, 'Same as step type');
            System.assertEquals('Not Started', actualResult.resultDetails[1].resultStatus, 'Same as result status');
            System.assertNotEquals(3, actualResult.resultDetails.size(), 'There should be 3 results in the actualResult');
            System.assertEquals(null, actualResult.jobExecutionErrorMessage, 'As the job is in progress, there is no error message');
        }
    }

    @IsTest
    private static void executionWithJobExecutionId() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            JobExecution__c job = (JobExecution__c) new JobExecution()
                .status('In Progress')
                .template(template.Id)
                .add(
                    new JobStep()
                        .name('step1')
                        .type('Function')
                        .order(1)
                        .configJson('{"functionName" : "MockedFunction"}')
                        .result(new Result().jobType('Function').status('In Progress'))
                )
                .persist();

            // Exercise

            Test.startTest();
            ResultStatusDetail actualResult = ResultMonitorLWCHandler.result(job.Id, '', '');
            Test.stopTest();

            // Verify
            System.assertEquals('Sample', actualResult.mainTitle, 'Title should be JE Name');
            System.assertEquals(job.Id, actualResult.jobExecutionId, 'Same as job execution id');
            System.assertEquals('step1', actualResult.resultDetails[0].jobStepLabel, 'Same as step name');
            System.assertEquals('Function', actualResult.resultDetails[0].jobStepType, 'Same as step type');
            System.assertEquals('In Progress', actualResult.resultDetails[0].resultStatus, 'Same as result status');
            System.assertEquals(1, actualResult.resultDetails.size(), 'There should be 1 result in the actualResult');
        }
    }

    @IsTest
    private static void executionWithoutTemplateTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup

            JobExecution__c job = (JobExecution__c) new JobExecution()
                .status('In Progress')
                .add(
                    new JobStep()
                        .name('step1')
                        .type('Manual')
                        .order(1)
                        .configJson('{"type" : "QRT1"}')
                        .result(new Result().jobType('Manual').status('Not Started'))
                )
                .persist();

            // Exercise

            Test.startTest();
            String objectName = (String) SObjectType.JobExecution__c.getLocalName();
            String fieldName = (String) SObjectType.JobExecution__c.fields.Id.getLocalName();

            ResultStatusDetail actualResult = ResultMonitorLWCHandler.result(job.Id, objectName, fieldName);
            Test.stopTest();

            // Verify
            System.assertEquals([SELECT Name FROM JobExecution__c WHERE Id = :job.Id].Name, actualResult.mainTitle, 'Title should be JE Name');
            System.assertEquals(job.Id, actualResult.jobExecutionId, 'Same as job execution id');
            System.assertEquals('step1', actualResult.resultDetails[0].jobStepLabel, 'Same as step name');
            System.assertEquals('Manual', actualResult.resultDetails[0].jobStepType, 'Same as step type');
            System.assertEquals('Not Started', actualResult.resultDetails[0].resultStatus, 'Same as result status');
            System.assertEquals(1, actualResult.resultDetails.size(), 'There should be 1 result in the actualResult');
        }
    }

    @IsTest
    private static void promotionWithoutJobExecutionTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            List<Environment__c> environments = [SELECT Id, Name, Type__c, Platform__c FROM Environment__c];
            Project__c project = [SELECT Id FROM Project__c LIMIT 1];
            new Promotion().projectId(project.Id).sourceEnvId(environments[0].Id).status('Draft').persist();

            Promotion__c promotion = [SELECT Id, Last_Promotion_Execution_Id__c FROM Promotion__c LIMIT 1];

            // Exercise
            Test.startTest();
            String objectName = (String) SObjectType.Promotion__c.getLocalName();
            String fieldName = (String) SObjectType.Promotion__c.fields.Last_Promotion_Execution_Id__c.getLocalName();

            ResultStatusDetail actualResult = ResultMonitorLWCHandler.result(promotion.Id, objectName, fieldName);
            Test.stopTest();

            // Verify
            System.assertEquals(null, actualResult.mainTitle, 'The title for result monitor should remain blank');
            System.assertEquals(null, actualResult.jobExecutionId, 'There should be no job execution');
            System.assertEquals(0, actualResult.resultDetails.size(), 'There should be no results in the actualResult');
            System.assertEquals('Not Started', actualResult.jobExecutionStatus, 'Job status should be not started');
            System.assertEquals(null, actualResult.jobTemplateId, 'There should be no job template');
            System.assertEquals('', actualResult.jobExecutionErrorMessage, 'As there is no job, error message is blank');
        }
    }

    @IsTest
    private static void jobExecutionWithErrorMessage() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            new Function().apiName('MockedFunction').script('echo hi').persist();
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            JobExecution__c job = (JobExecution__c) new JobExecution()
                .status('Failed')
                .template(template.Id)
                .add(
                    new JobStep()
                        .name('step1')
                        .type('Function')
                        .order(1)
                        .configJson('{"functionName" : "MockedFunction"}')
                        .result(new Result().jobType('Function').status('Failed').errMsg('There was an error'))
                )
                .add(new JobStep().name('step2').type('Function').order(2).configJson('{"functionName" : "MockedFunction"}'))
                .errorMsg('There was an error')
                .persist();

            // Exercise
            Test.startTest();
            String objectName = (String) SObjectType.JobExecution__c.getLocalName();
            String fieldName = (String) SObjectType.JobExecution__c.fields.Id.getLocalName();

            ResultStatusDetail actualResult = ResultMonitorLWCHandler.result(job.Id, objectName, fieldName);
            Test.stopTest();

            // Verify
            System.assertEquals('Sample', actualResult.mainTitle, 'Title should be job template Name');
            System.assertEquals(job.Id, actualResult.jobExecutionId, 'Same as job execution id');
            System.assertEquals('step1', actualResult.resultDetails[0].jobStepLabel, 'Same as step name');
            System.assertEquals('Function', actualResult.resultDetails[0].jobStepType, 'Same as step type');
            System.assertEquals('Failed', actualResult.resultDetails[0].resultStatus, 'Same as result status');
            System.assertEquals('There was an error', actualResult.jobExecutionErrorMessage, 'Same as job error message');
        }
    }

    @IsTest
    private static void getQueuedJobsTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            new Function().apiName('MockedFunction').script('echo hi').persist();
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            new JobExecution()
                .status('In Progress')
                .template(template.Id)
                .add(new JobStep().name('Check Version').type('Function').configJson('{"functionName" : "MockedFunction"}'));
            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(new JobStep().name('Run Test').type('Function').configJson('{"functionName" : "MockedFunction"}'));
            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(
                    new JobStep()
                        .name('Evaluate Criteria')
                        .type('Manual')
                        .configJson(
                            '{"parameters":[{"name":"assigneeId","value":"' +
                            UserInfo.getUserId() +
                            '"},{"name":"assigneeName","value":"' +
                            UserInfo.getName() +
                            '"}], "sharedResource":"' +
                            UserInfo.getName() +
                            '"}'
                        )
                )
                .persist();

            List<JobStep__c> jobSteps = [SELECT Id, Name FROM JobStep__c];
            insert new Queue__c(Name = jobSteps[0].Name, ContextId__c = jobSteps[0].Id, Resource__c = UserInfo.getName(), Status__c = 'In Progress');
            insert new Queue__c(Name = jobSteps[1].Name, ContextId__c = jobSteps[1].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');
            insert new Queue__c(Name = jobSteps[2].Name, ContextId__c = jobSteps[2].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');

            // Exercise
            Test.startTest();
            ResultStatusDetail.QueueStatus result = ResultMonitorLWCHandler.getQueuedJobs(jobSteps[0].Id);
            Test.stopTest();

            // Verify
            Assert.isNotNull(result, 'The result is null');
            Assert.areEqual(3, result.allQueuedJob.size(), 'The number of jobs does not match');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[0].resourceName, 'The resource name does not match for job 1');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[1].resourceName, 'The resource name does not match for job 2');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[2].resourceName, 'The resource name does not match for job 3');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[2].assigneeName, 'The assignee name does not match for job 3');
            Assert.areEqual(null, result.allQueuedJob[1].assigneeName, 'The assignee name does not match for job 2');
        }
    }

    @IsTest
    private static void getQueuedJobsWithPromotionTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup

            List<Environment__c> environments = [SELECT Id, Name, Type__c, Platform__c FROM Environment__c];
            Project__c project = [SELECT Id FROM Project__c LIMIT 1];
            new Promotion().projectId(project.Id).sourceEnvId(environments[0].Id).status('Draft');

            new Function().apiName('MockedFunction').script('echo hi').persist();
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            new JobExecution()
                .status('In Progress')
                .template(template.Id)
                .add(new JobStep().name('Check Version').type('Function').configJson('{"functionName" : "MockedFunction"}'));
            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(new JobStep().name('Run Test').type('Function').configJson('{"functionName" : "MockedFunction"}'));
            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(
                    new JobStep()
                        .name('Evaluate Criteria')
                        .type('Manual')
                        .configJson(
                            '{"parameters":[{"name":"assigneeId","value":"' +
                            UserInfo.getUserId() +
                            '"},{"name":"assigneeName","value":"' +
                            UserInfo.getName() +
                            '"}], "sharedResource":"' +
                            UserInfo.getName() +
                            '"}'
                        )
                );
            JobExecution__c job = (JobExecution__c) new JobExecution()
                .status('Not Started')
                .template(template.Id)
                .add(new JobStep().name('step1').type('Function').order(1).configJson('{"functionName" : "MockedFunction"}'))
                .persist();

            Promotion__c promotion = [SELECT Id, Last_Deployment_Execution_Id__c FROM Promotion__c LIMIT 1];
            promotion.Last_Deployment_Execution_Id__c = job.Id;
            update promotion;

            List<JobStep__c> jobSteps = [SELECT Id, Name, JobExecution__c FROM JobStep__c];
            insert new Queue__c(Name = jobSteps[0].Name, ContextId__c = jobSteps[0].Id, Resource__c = UserInfo.getName(), Status__c = 'In Progress');
            insert new Queue__c(Name = jobSteps[1].Name, ContextId__c = jobSteps[1].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');
            insert new Queue__c(Name = jobSteps[2].Name, ContextId__c = jobSteps[2].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');

            JobExecution__c firstJob = new JobExecution__c(Id = jobSteps[0].JobExecution__c, Status__c = 'Successful', Promotion__c = promotion.Id);
            update firstJob;

            // Exercise
            Test.startTest();
            ResultStatusDetail.QueueStatus result = ResultMonitorLWCHandler.getQueuedJobs(jobSteps[0].Id);
            Test.stopTest();

            // Verify
            Assert.isNotNull(result, 'The result is null');
            Assert.areEqual(3, result.allQueuedJob.size(), 'The number of jobs does not match');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[0].resourceName, 'The resource name does not match for job 1');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[1].resourceName, 'The resource name does not match for job 2');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[2].resourceName, 'The resource name does not match for job 3');
            Assert.areEqual(UserInfo.getName(), result.allQueuedJob[2].assigneeName, 'The assignee name does not match for job 3');
            Assert.areEqual(null, result.allQueuedJob[1].assigneeName, 'The assignee name does not match for job 2');
        }
    }

    @IsTest
    private static void releaseResourceTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            new Function().apiName('MockedFunction').script('echo hi').persist();
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            new JobExecution()
                .status('In Progress')
                .template(template.Id)
                .add(new JobStep().name('Check Version').type('Function').configJson('{"functionName" : "MockedFunction"}'));
            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(new JobStep().name('Run Test').type('Function').configJson('{"functionName" : "MockedFunction"}'))
                .persist();

            List<JobStep__c> jobSteps = [SELECT Id, Name FROM JobStep__c];
            insert new Queue__c(Name = jobSteps[0].Name, ContextId__c = jobSteps[0].Id, Resource__c = UserInfo.getName(), Status__c = 'In Progress');
            insert new Queue__c(Name = jobSteps[1].Name, ContextId__c = jobSteps[1].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');

            // Exercise
            Test.startTest();
            ResultMonitorLWCHandler.releaseResource(jobSteps[0].Id);
            Test.stopTest();

            // Verify
            List<Queue__c> queue = [SELECT Id, ContextId__c, Status__c FROM Queue__c];

            Assert.areEqual(1, queue.size(), '1 record should exist in queue');
        }
    }

    @IsTest
    private static void releaseResourceWithInvalidInputTest() {
        // Setup
        Exception expectedException = null;

        // Exercise
        try {
            ResultMonitorLWCHandler.releaseResource(null);
        } catch (Exception ex) {
            expectedException = ex;
        }

        // Verify
        Assert.isNull(expectedException, 'should not throw any exception, if there is no job in queue matching the context id');
    }

    @IsTest
    private static void resumeQueueTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            new Function().apiName('MockedFunction').script('echo hi').persist();
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(new JobStep().name('Run Test').type('Function').configJson('{"functionName" : "MockedFunction"}'))
                .persist();

            List<JobStep__c> jobSteps = [SELECT Id, Name FROM JobStep__c];
            insert new Queue__c(Name = jobSteps[0].Name, ContextId__c = jobSteps[0].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');

            // Exercise
            Test.startTest();
            ResultMonitorLWCHandler.resume(jobSteps[0].Id);
            Test.stopTest();

            // Verify
            List<Queue__c> queue = [SELECT Id, ContextId__c, Status__c FROM Queue__c];

            Assert.areEqual(1, queue.size(), 'No record should exist in queue');
        }
    }

    @IsTest
    private static void getQueuedJobsInformationTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            new Function().apiName('MockedFunction').script('echo hi').persist();
            JobTemplate__c template = [SELECT Id FROM JobTemplate__c LIMIT 1];

            new JobExecution()
                .status('In Progress')
                .template(template.Id)
                .add(
                    new JobStep()
                        .name('Evaluate Criteria')
                        .type('Manual')
                        .configJson(
                            '{"parameters":[{"name":"assigneeId","value":"' +
                            UserInfo.getUserId() +
                            '"},{"name":"assigneeName","value":"' +
                            UserInfo.getName() +
                            '"}], "sharedResource":"' +
                            UserInfo.getName() +
                            '"}'
                        )
                );
            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(new JobStep().name('Check Version').type('Function').configJson('{"functionName" : "MockedFunction"}'));
            new JobExecution()
                .status('Queued')
                .template(template.Id)
                .add(new JobStep().name('Run Test').type('Function').configJson('{"functionName" : "MockedFunction"}'))
                .persist();

            List<JobStep__c> jobSteps = [SELECT Id, Name FROM JobStep__c];
            insert new Queue__c(Name = jobSteps[0].Name, ContextId__c = jobSteps[0].Id, Resource__c = UserInfo.getName(), Status__c = 'In Progress');
            insert new Queue__c(Name = jobSteps[1].Name, ContextId__c = jobSteps[1].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');
            insert new Queue__c(Name = jobSteps[2].Name, ContextId__c = jobSteps[2].Id, Resource__c = UserInfo.getName(), Status__c = 'Queued');

            // Exercise
            Test.startTest();
            List<ResultStatusDetail.QueueChecklistItem> result = ResultMonitorLWCHandler.getQueueInformation(jobSteps[0].Id);
            Test.stopTest();

            // Verify
            Assert.isNotNull(result, 'The result is null');
            Assert.areEqual(6, result.size(), 'The number of checklist items not match');

            Assert.areEqual('License assigned', result[0].name, 'The name does not match');
            Assert.isTrue(result[0].isValid, 'The checklist item does not comply');
            Assert.areEqual(Label.MissingLicenseForQueue, result[0].message, 'The message does not match');

            Assert.areEqual('Manual Step', result[4].name, 'The name does not match');
            Assert.isFalse(result[4].isValid, 'The checklist item does not comply');
            Assert.areEqual(Label.IncompleteManualTaskQueue, result[4].message, 'The message does not match');
        }
    }

    // HELPER

    private static void data() {
        Personal_Settings__c ps = Personal_Settings__c.getInstance();
        if (String.isBlank(ps.API_Key__c)) {
            ps.API_Key__c = DeployAPI.encryptAPIKey('99999999999999999999');
            upsert ps;
        }

        //Environment creation
        for (Integer i = 0; i < 3; i++) {
            new Environment().name('Environment ' + i).type('Production/Developer').platform('Other');
        }
        new Environment().name('Test Environment 3').type('Production/Developer').platform('Other').persist();
        List<Environment__c> environments = [SELECT Id, Name, Type__c, Platform__c FROM Environment__c ORDER BY CreatedDate];

        // Org Credential validation
        List<Org__c> credentials = [
            SELECT Id, Name, Environment__c, Platform__c, Oauth_Signature__c, Validated_Date__c, Disable_Validation__c, SFDC_Org_ID__c
            FROM Org__c
            WHERE Platform__c = 'Other'
        ];
        for (Org__c org : credentials) {
            org.Username__c = UserInfo.getUserName();
            org.SFDC_Org_ID__c = UserInfo.getOrganizationId() + '_' + UserInfo.getUserId();
            org.Oauth_Signature__c = org.Name;
            org.Validated_Date__c = System.now();
            org.Disable_Validation__c = true;
            break;
        }
        update credentials;

        new JobTemplate().name('Sample');

        // Deployment flow creation
        new Pipeline()
            .active(true)
            .mainBranch('master')
            .setPlatform('Other')
            .add(new Connection().sourceId(environments[0].Id).destinationId(environments[2].Id).branch('dev1'))
            .add(new Connection().sourceId(environments[1].Id).destinationId(environments[2].Id).branch('dev2'))
            .add(new Project().add(new UserStory().status('Approved').credentialId(credentials[0].Id)))
            .persist();
    }

    private static User getRunAsUser() {
        return [SELECT Id, Email FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }
}