@IsTest
private with sharing class DeleteDataCommitDeploymentTaskTest {
    @TestSetup
    private static void setup() {
        User standardUser = setupUser();
        System.runAs(standardUser) {
            setupLicense();
            createTestData();
        }
    }

    @IsTest
    private static void deleteMultipleDataCommit() {
        User standardUser = getStandardUser();
        System.runAs(standardUser) {
            // Setup
            User_Story__c userStory = getUserStory('test');
            List<User_Story_Data_Commit__c> dataCommits = getUserStoryDataCommits(new Set<Id>{ userStory.Id });

            // Exercise
            Test.startTest();
            delete dataCommits;
            Test.stopTest();

            // Verify
            List<Deployment_Task__c> deploymentTasks = getDeploymentTasks(userStory.Id);
            List<Data_Set__c> dataSets = getDataSets(new List<String>{ 'Data Set 0', 'Data Set 1' });

            System.assertEquals(0, deploymentTasks.size(), 'Deployment Tasks records should be deleted');
            System.assertEquals(0, dataSets.size(), 'Data Sets records should be deleted');
        }
    }

    @IsTest
    private static void deleteDataCommitForSameDataSet() {
        User standardUser = getStandardUser();
        System.runAs(standardUser) {
            // Setup
            User_Story__c userStory = getUserStory('test');
            List<User_Story_Data_Commit__c> dataCommits = getUserStoryDataCommits(new Set<Id>{ userStory.Id });
            // create new data commit for the same data Set, the deployment task shold not be deleted
            User_Story_Data_Commit__c existingDataCommit = dataCommits[0];
            User_Story_Data_Commit__c newDataCommit = new User_Story_Data_Commit__c(
                User_Story__c = existingDataCommit.User_Story__c,
                Data_Set__c = existingDataCommit.Data_Set__c
            );
            insert newDataCommit;

            // Exercise
            Test.startTest();
            delete dataCommits;
            Test.stopTest();

            // Verify
            List<Deployment_Task__c> deploymentTasks = getDeploymentTasks(userStory.Id);
            List<Data_Set__c> dataSets = getDataSets(new List<String>{ 'Data Set 0', 'Data Set 1' });

            System.assertEquals(
                1,
                deploymentTasks.size(),
                'Deployment Tasks records should not be deleted because the same Data Set is in another Data Commit'
            );
            System.assertEquals(1, dataSets.size(), 'Only 1 data set should be available');
        }
    }

    @IsTest
    private static void deleteMultipleDataCommitForMC() {
        User standardUser = getStandardUser();
        System.runAs(standardUser) {
            // Setup
            User_Story__c userStory = getUserStory('testMc');
            List<User_Story_Data_Commit__c> dataCommits = getUserStoryDataCommits(new Set<Id>{ userStory.Id });

            // Exercise
            Test.startTest();
            delete dataCommits;
            Test.stopTest();

            // Verify
            List<JobStep__c> deploymentSteps = getDeploymentSteps(userStory.Id);
            List<Data_Set__c> dataSets = getDataSets(new List<String>{ 'Data Set 2', 'Data Set 3' });

            System.assertEquals(0, deploymentSteps.size(), 'Deployment steps records should be deleted');
            System.assertEquals(0, dataSets.size(), 'Data Sets records should be deleted');
        }
    }

    @IsTest
    private static void deleteDataCommitForSameDataSetMC() {
        User standardUser = getStandardUser();
        System.runAs(standardUser) {
            // Setup
            User_Story__c userStory = getUserStory('testMc');
            List<User_Story_Data_Commit__c> dataCommits = getUserStoryDataCommits(new Set<Id>{ userStory.Id });
            // create new data commit for the same data Set, the deployment step shold not be deleted
            User_Story_Data_Commit__c existingDataCommit = dataCommits[0];
            User_Story_Data_Commit__c newDataCommit = new User_Story_Data_Commit__c(
                User_Story__c = existingDataCommit.User_Story__c,
                Data_Set__c = existingDataCommit.Data_Set__c
            );
            insert newDataCommit;

            // Exercise
            Test.startTest();
            delete dataCommits;
            Test.stopTest();

            // Verify
            List<JobStep__c> deploymentSteps = getDeploymentSteps(userStory.Id);
            List<Data_Set__c> dataSets = getDataSets(new List<String>{ 'Data Set 2', 'Data Set 3' });

            System.assertEquals(
                1,
                deploymentSteps.size(),
                'Deployment Step records should not be deleted because the same Data Set is in another Data Commit'
            );

            System.assertEquals(1, dataSets.size(), 'Only 1 data set should be available');
        }
    }

    private static User setupUser() {
        ITestDefaults userCreation = new CopadoSetupTestDefaults.UserDefaults().createRunAsUsers().executeDML();
        User standardUser = userCreation.getRunAsUsers().get('Standard')[0];
        List<PermissionSet> permissionSets = [
            SELECT Id
            FROM PermissionSet
            WHERE Name IN ('Copado_Functions', 'Copado_Job_Engine')
        ];
        List<PermissionSetAssignment> assignments = new List<PermissionSetAssignment>();
        for (PermissionSet permissionSet : permissionSets) {
            assignments.add(new PermissionSetAssignment(AssigneeId = standardUser.Id, PermissionSetId = permissionSet.Id));
        }
        insert assignments;
        return standardUser;
    }

    private static void setupLicense() {
        TestUtilities.enableLicenses(2, 2, 2, 2, 2, 2, 2);
        TestUtilities.assignLicense(String.valueOf(UserInfo.getUserName()), true, true, true, true, true, true);
    }

    private static User getStandardUser() {
        User standardUser = [
            SELECT Id
            FROM User
            WHERE ProfileId IN (SELECT Id FROM Profile WHERE Name = 'Standard User')
            ORDER BY CreatedDate DESC
            LIMIT 1
        ];
        return standardUser;
    }

    private static void createTestData() {
        Environment__c devEnvironment = TestDataFactory.createEnvironments('Dev1', 'Production/Developer');
        Environment__c uatEnvironment = TestDataFactory.createEnvironments('Uat', 'Production/Developer');
        Environment__c devEnvironmentMc = TestDataFactory.createEnvironments('Dev1Mc', 'Production/Developer');
        Environment__c uatEnvironmentMc = TestDataFactory.createEnvironments('UatMc', 'Production/Developer');
        insert new List<Environment__c>{ devEnvironment, uatEnvironment, devEnvironmentMc, uatEnvironmentMc };

        List<Org__c> credential = TestDataFactory.createOrgCredentials(
            4,
            'name@example.com',
            new List<Environment__c>{ devEnvironment, uatEnvironment, devEnvironmentMc, uatEnvironmentMc }
        );

        Git_Repository__c repository = TestDataFactory.createGitRepository();
        Git_Repository__c repositoryMc = TestDataFactory.createGitRepository();
        repositoryMc.Name = 'Test Repo Mc';
        insert new List<Git_Repository__c>{ repository, repositoryMc };

        Deployment_Flow__c pipeline = TestDataFactory.createDeploymentFlow('MyPipeline', true, repository.Id, true);
        pipeline.Platform__c = 'Salesforce';

        Deployment_Flow__c pipelineForMC = TestDataFactory.createDeploymentFlow('MyPipelineSFDX', true, repository.Id, true);
        pipelineForMC.Platform__c = 'Other';
        insert new List<Deployment_Flow__c>{ pipeline, pipelineForMC };

        Deployment_Flow_Step__c connection1 = TestDataFactory.createDeploymentFlowStep(devEnvironment.Id, uatEnvironment.Id, pipeline.Id, '');

        Deployment_Flow_Step__c connection1MC = TestDataFactory.createDeploymentFlowStep(
            devEnvironmentMc.Id,
            uatEnvironmentMc.Id,
            pipelineForMC.Id,
            ''
        );

        insert new List<Deployment_Flow_Step__c>{ connection1, connection1MC };

        Project__c project = TestDataFactory.createProject('MyProject', pipeline.Id, false);

        Project__c projectMC = TestDataFactory.createProject('MyProjectMC', pipelineForMC.Id, false);

        insert new List<Project__c>{ project, projectMC };

        Sprint__c sprint = new Sprint__c(Name = 'TestRun_v1');
        insert sprint;

        User_Story__c userStory = TestDataFactory.createUserStory('test', 'Draft', sprint.Id, project.Id, devEnvironment.Id, credential[0].Id);

        User_Story__c userStoryMC = TestDataFactory.createUserStory(
            'testMc',
            'Draft',
            sprint.Id,
            projectMC.Id,
            devEnvironmentMc.Id,
            credential[2].Id
        );

        insert new List<User_Story__c>{ userStory, userStoryMC };

        Data_Template__c dataTemplate = TestDataFactory.createDataTemplate('test', credential[0].Id, 'Account', null, null, null, null, null);
        List<Data_Set__c> dataSets = new List<Data_Set__c>();
        List<Deployment__c> deployments = new List<Deployment__c>();
        for (Integer i = 0; i < 2; i++) {
            dataSets.add(new Data_Set__c(Name = 'Data Set ' + i, Data_Template__c = dataTemplate.Id));
            deployments.add(createDeployment(credential[0].Id));
        }
        dataSets.add(new Data_Set__c(Name = 'Data Set ' + 2, Data_Template__c = dataTemplate.Id));
        dataSets.add(new Data_Set__c(Name = 'Data Set ' + 3, Data_Template__c = dataTemplate.Id));
        insert dataSets;
        insert deployments;
        List<User_Story_Data_Commit__c> dataCommits = new List<User_Story_Data_Commit__c>();
        for (Integer i = 0; i < 2; i++) {
            Data_Set__c dataSet = dataSets[i];
            Deployment__c deployment = deployments[i];
            dataCommits.add(createDataCommit(userStory.Id, dataSet.Id, deployment.Id));
        }

        JobTemplate__c jobTemplate = TestDataFactory.createJobTemplate('SFDX_Generate_DataSet', 'SFDX_Generate_DataSe', 1, '');
        insert jobTemplate;

        string configJson1 = generateConfigJson(dataSets[2].Name, dataSets[2].Id);
        JobStep__c jobstep1 = TestDataFactory.createJobStep('SFDX_Generate_DataSet', jobTemplate.Id, 'function', 1, configJson1);
        jobstep1.UserStory__c = userStoryMC.Id;
        jobstep1.ExecutionSequence__c = 'after';
        jobstep1.CustomType__c = 'Data Set - Salesforce';

        string configJson2 = generateConfigJson(dataSets[3].Name, dataSets[3].Id);
        JobStep__c jobstep2 = TestDataFactory.createJobStep('SFDX_Generate_DataSet', jobTemplate.Id, 'function', 2, configJson2);
        jobstep2.UserStory__c = userStoryMC.Id;
        jobstep2.ExecutionSequence__c = 'after';
        jobstep2.CustomType__c = 'Data Set - Salesforce';
        insert new List<JobStep__c>{ jobstep2, jobstep1 };

        dataCommits.add(createDataCommit(userStoryMC.Id, dataSets[2].Id, null));
        dataCommits.add(createDataCommit(userStoryMC.Id, dataSets[3].Id, null));
        insert dataCommits;
    }

    private static Deployment__c createDeployment(Id orgId) {
        Deployment__c deployment = TestDataFactory.createDeployment(
            'generate data set',
            Schema.SObjectType.Deployment__c.getRecordTypeInfosByDeveloperName().get('Advanced_multi_step').getRecordTypeId(),
            orgId
        );
        deployment.Status__c = 'Completed Succesfully';
        return deployment;
    }

    private static User_Story_Data_Commit__c createDataCommit(Id userStoryId, Id dataSetId, Id deploymentId) {
        User_Story_Data_Commit__c dataCommit = new User_Story_Data_Commit__c(
            User_Story__c = userStoryId,
            Data_Set__c = dataSetId,
            Execution_Job__c = deploymentId
        );
        return dataCommit;
    }

    private static User_Story__c getUserStory(String title) {
        return [SELECT Id, Name, User_Story_Title__c FROM User_Story__c WHERE User_Story_Title__c = :title LIMIT 1];
    }

    private static List<Data_Set__c> getDataSets(List<String> names) {
        return [SELECT Id, Data_Template__c FROM Data_Set__c WHERE Name IN :names];
    }

    private static List<User_Story_Data_Commit__c> getUserStoryDataCommits(Set<Id> userStoryIds) {
        return [SELECT Id, User_Story__c, Data_Set__c FROM User_Story_Data_Commit__c WHERE User_Story__c IN :userStoryIds];
    }

    private static List<Deployment_Task__c> getDeploymentTasks(Id userStoryId) {
        return [SELECT Id, User_Story__c, dataJSON__c, Perform_Manual_Task__c, Type__c FROM Deployment_Task__c WHERE User_Story__c = :userStoryId];
    }

    private static List<JobStep__c> getDeploymentSteps(Id userStoryId) {
        return [SELECT Id, UserStory__c, ConfigJson__c, CustomType__c FROM JobStep__c WHERE UserStory__c = :userStoryId];
    }

    private static string generateConfigJson(String dataSetname, Id datasetId) {
        String configJson =
            '{"parameters":[' +
            '{"value":"a0fUB000000NAMrYAO","name":"sourceOrgId"},' +
            '{"value":"{$Source.Credential.EndpointURL}","name":"sourceInstanceUrl"},' +
            '{"value":"{$Source.Credential.SessionId}","name":"sourceSessionId"},' +
            '{"value":"{$Destination.Id}","name":"destinationOrgId"},' +
            '{"value":"{$Destination.Credential.EndpointURL}","name":"destinationInstanceUrl"},' +
            '{"value":"{$Destination.Credential.SessionId}","name":"destinationSessionId"},' +
            '{"value":"{\\"sourceDataSetId\\":\\"' +
            dataSetId +
            '\\"}","name":"dataJson"},' +
            '{"value":"20242880","name":"maxBuffer"},' +
            '{"value":"https://test.api.copado.com","name":"host"},' +
            '{"value":"5000","name":"pollInterval"},' +
            '{"value":"{\\"name\\":\\"' +
            dataSetName +
            '\\",\\"dataSetId\\":\\"' +
            dataSetId +
            '\\"}","name":"dataSet"}' +
            '],"functionName":"SFDX_DATA_SET"}';

        return configJson;
    }
}