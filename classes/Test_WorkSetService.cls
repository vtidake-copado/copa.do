@IsTest
private class Test_WorkSetService {
    @TestSetup
    private static void setUpData() {
        List<User> users = TestDataFactory.createUsers();

        TestUtilities.enableLicenses(2, 2, 2, 2, 2);
        FeatureManagement.setPackageIntegerValue('CBM_Branches', 6);
        FeatureManagement.setPackageIntegerValue('CCM_Licenses_Enabled', 2);
        FeatureManagement.setPackageIntegerValue('EE_Licenses_Enabled', 2);

        PermissionSet ps = [SELECT Id FROM PermissionSet WHERE Name = 'Copado_User'];
        insert new PermissionSetAssignment(AssigneeId = users[0].Id, PermissionSetId = ps.Id);
    }

    @IsTest
    private static void workSetWithInvalidFilterCriteria() {
        User u = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(u.Username), true, true, true, true, true);

        System.runAs(u) {
            WorkSetService.Request request = new WorkSetService.Request();
            request.criteria = 'Id';
            request.value = UserInfo.getOrganizationId();

            CliProxy.CLIWrapper reqBody = new CliProxy.CLIWrapper();
            reqBody.mainService = 'work';
            reqBody.subService = 'set';
            reqBody.body = JSON.serialize(request);

            RestContext.request = Test_CliProxy.commonRequest(JSON.serialize(reqBody));

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            WorkSetService.Response resp = (WorkSetService.Response) JSON.deserialize(response, WorkSetService.Response.class);
            String expectedMessage = String.format(Label.NoUserStoryFound, new List<String>{ 'Id', UserInfo.getOrganizationId() });

            System.assertEquals(expectedMessage, resp.message);
            System.assertEquals(CliSfDataWrapper.StatusResult.ERROR.name(), resp.status);
        }
    }

    @IsTest
    private static void workSetSearchUS() {
        User u = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(u.Username), true, true, true, true, true);

        System.runAs(u) {
            List<Environment__c> environments = new List<Environment__c>{
                new Environment__c(Name = 'Environment 1'),
                new Environment__c(Name = 'Environment 2')
            };

            insert environments;

            Org__c credential = new Org__c();
            credential.Name = 'Credential 1';
            credential.Environment__c = environments[0].Id;
            insert credential;

            Deployment_Flow__c pipeline = new Deployment_Flow__c();
            pipeline.Name = 'MyPipeline';
            pipeline.Active__c = true;
            pipeline.Calculate_Based_on__c = 'User Story';
            insert pipeline;

            Deployment_Flow_Step__c connection = new Deployment_Flow_Step__c();
            connection.Deployment_Flow__c = pipeline.Id;
            connection.Branch__c = 'env1';
            connection.Source_Environment__c = environments[0].Id;
            connection.Destination_Environment__c = environments[1].Id;
            insert connection;

            User_Story__c us = new User_Story__c();
            us.Environment__c = environments[0].Id;
            insert us;

            mockRequest('Id', us.Id, credential.Name);

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            WorkSetService.Response resp = (WorkSetService.Response) JSON.deserialize(response, WorkSetService.Response.class);

            System.assertEquals(CliSfDataWrapper.StatusResult.ERROR.name(), resp.status);
            System.assertEquals(Label.Org_Credential_Not_Included_In_Deployment_Flow, resp.message);
        }
    }

    @IsTest
    private static void workSetWithInvalidCredential() {
        User u = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(u.Username), true, true, true, true, true);

        System.runAs(u) {
            User_Story__c us = new User_Story__c();
            insert us;
            us = [SELECT Id, Name, Environment__c, Project__c FROM User_Story__c WHERE Id = :us.Id];

            mockRequest('Id', us.Id, 'Invalid Credential');

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            WorkSetService.Response resp = (WorkSetService.Response) JSON.deserialize(response, WorkSetService.Response.class);

            System.assertEquals(Label.InvalidOrgCredential, resp.message);
            System.assertEquals(CliSfDataWrapper.StatusResult.ERROR.name(), resp.status);
        }
    }

    @IsTest
    private static void workSetWithCredential() {
        User u = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(u.Username), true, true, true, true, true);

        System.runAs(u) {
            List<Environment__c> environments = new List<Environment__c>{
                new Environment__c(Name = 'Environment 1'),
                new Environment__c(Name = 'Environment 2')
            };

            insert environments;

            Org__c credential = new Org__c();
            credential.Name = 'Credential 1';
            credential.Environment__c = environments[0].Id;
            insert credential;

            Deployment_Flow__c pipeline = new Deployment_Flow__c();
            pipeline.Name = 'MyPipeline';
            pipeline.Active__c = true;
            pipeline.Calculate_Based_on__c = 'User Story';
            insert pipeline;

            Deployment_Flow_Step__c connection = new Deployment_Flow_Step__c();
            connection.Deployment_Flow__c = pipeline.Id;
            connection.Branch__c = 'env1';
            connection.Source_Environment__c = environments[0].Id;
            connection.Destination_Environment__c = environments[1].Id;
            insert connection;

            Project__c prj = new Project__c();
            prj.Name = 'My Project';
            prj.Deployment_Flow__c = pipeline.Id;
            insert prj;

            User_Story__c us = new User_Story__c();
            us.Project__c = prj.Id;
            insert us;
            us = [SELECT Id, Name, Environment__c, Project__c FROM User_Story__c WHERE Id = :us.Id];

            mockRequest('Id', us.Id, credential.Name);

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            WorkSetService.Response resp = (WorkSetService.Response) JSON.deserialize(response, WorkSetService.Response.class);

            System.assertEquals(CliSfDataWrapper.StatusResult.OK.name(), resp.status);

            System.assertEquals(null, resp.message);
            System.assertEquals('env1', resp.environmentBranch);

            System.assertEquals(us.Name, resp.userStory.Name);
            System.assertEquals(credential.Id, resp.userStory.Org_Credential__c);
        }
    }

    @IsTest
    private static void workSetUsWithoutEnvironment() {
        User u = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(u.Username), true, true, true, true, true);

        System.runAs(u) {
            User_Story__c userStory = new User_Story__c();
            insert userStory;
            mockRequest('Id', userStory.Id);

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            CliSfDataWrapper resp = (CliSfDataWrapper) JSON.deserialize(response, CliSfDataWrapper.class);

            System.assertEquals(CliSfDataWrapper.StatusResult.ERROR.name(), resp.status);
            System.assertEquals(Label.Credential_Not_Included_in_User_Story, resp.message);
        }
    }

    @IsTest
    private static void workSetWithNoCliConfigFile() {
        User userRecord = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(userRecord.Username), true, true, true, true, true);

        System.runAs(userRecord) {
            //SETUP

            Credential credential1 = new Credential();
            Credential credential2 = new Credential();

            Environment dev1 = new Environment().name('dev1').type('Sandbox').platform('SFDX').add(credential1);
            Environment uat = new Environment().name('uat').type('Sandbox').platform('SFDX').add(credential2);

            new Pipeline()
                .active(true)
                .mainBranch('main')
                .setPlatform('SFDX')
                .add(new SystemProperty().apiName('vlocity_root_folder').value('Vlocity Test Folder'))
                .add(new Connection(dev1, uat).branch('dev1'))
                .add(new Project().add(new UserStory().credential(credential1).title('US-1')))
                .persist();

            User_Story__c usRecord = getUserStory('US-1');

            ExtensionKeyValueSettingsSelector.mock = new List<ExtensionKeyValueSetting__mdt>{
                new ExtensionKeyValueSetting__mdt(
                    Extension__r = new ExtensionPackageConfiguration__mdt(Platform__c = 'SFDX'),
                    Key__c = 'CliConfiguration',
                    Value__c = 'CliConfiguration'
                )
            };

            mockRequest('Name', usRecord.Name);

            //EXERCISE

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            WorkSetService.Response resp = (WorkSetService.Response) JSON.deserialize(response, WorkSetService.Response.class);

            //VERIFY

            System.assertEquals(CliSfDataWrapper.StatusResult.OK.name(), resp.status);

            System.assertEquals(null, resp.message);
            System.assertEquals('dev1', resp.environmentBranch);
            System.assertEquals(usRecord.Name, resp.userStory.Name);
            System.assertEquals(null, resp.configFile);
        }
    }

    @IsTest
    private static void workSetWithCliConfigFile() {
        User userRecord = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(userRecord.Username), true, true, true, true, true);

        System.runAs(userRecord) {
            //SETUP

            Credential credential1 = new Credential();
            Credential credential2 = new Credential();

            Environment dev1 = new Environment().name('dev1').type('Sandbox').platform('SFDX').add(credential1);
            Environment uat = new Environment().name('uat').type('Sandbox').platform('SFDX').add(credential2);

            new Pipeline()
                .active(true)
                .mainBranch('main')
                .setPlatform('SFDX')
                .add(new SystemProperty().apiName('vlocity_root_folder').value('Vlocity Test Folder'))
                .add(new SystemProperty().apiName('dynamic_expression_resolver').value('Expression Value'))
                .add(new Connection(dev1, uat).branch('dev1'))
                .add(new Project().add(new UserStory().credential(credential1).title('US-1')))
                .persist();

            User_Story__c usRecord = getUserStory('US-1');

            ExtensionKeyValueSettingsSelector.mock = new List<ExtensionKeyValueSetting__mdt>{
                new ExtensionKeyValueSetting__mdt(
                    Extension__r = new ExtensionPackageConfiguration__mdt(Platform__c = 'SFDX'),
                    Key__c = 'CliConfiguration',
                    Value__c = 'CliConfiguration'
                )
            };

            StaticResourcesSelector.mock = new List<StaticResource>{
                new StaticResource(Name = 'CliConfiguration', Body = Blob.valueOf(getConfigFile()))
            };

            mockRequest('Name', usRecord.Name);

            //EXERCISE

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            WorkSetService.Response resp = (WorkSetService.Response) JSON.deserialize(response, WorkSetService.Response.class);

            //VERIFY

            System.assertEquals(CliSfDataWrapper.StatusResult.OK.name(), resp.status);

            System.assertEquals(null, resp.message);
            System.assertEquals('dev1', resp.environmentBranch);
            System.assertEquals(usRecord.Name, resp.userStory.Name);
            System.assertEquals(getResolvedConfigFile(), resp.configFile);
        }
    }

    @IsTest
    private static void workSetWithOutOfSyncEnvironment() {
        User u = [SELECT Id, Username FROM User WHERE Email = 'test1@test1.com'];
        TestUtilities.assignLicense(String.valueOf(u.Username), true, true, true, true, true);

        System.runAs(u) {
            //SETUP

            Credential dev1Credential = new Credential().name('dev1');
            Environment dev1 = new Environment().name('dev1').type('Sandbox').platform('Other').add(dev1Credential);
            Environment dev2 = new Environment().name('dev2').type('Sandbox').platform('Other').add(new Credential().name('dev2'));
            Environment dev3 = new Environment().name('dev3').type('Sandbox').platform('Other').add(new Credential());
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
                .add(new Connection(dev3, integration).branch('dev3'))
                .add(new Connection(integration, uat).branch('int'))
                .add(new Connection(uat, prod).branch('uat'))
                .add(
                    new Project()
                        .add(new UserStory().title('US-1').credential(dev1Credential).add(new UserStoryMetadata().name('TestClass').type('ApexClass')))
                        .add(new UserStory().title('US-2').credential(dev1Credential).add(new UserStoryMetadata().name('TestClass').type('ApexClass')))
                )
                .persist();

            createPromotionsExceptEnvironment([SELECT Id FROM Environment__c WHERE Name = 'dev2' LIMIT 1].Id);     
            mockRequest('Id', getUserStory('US-2').Id, 'dev2');

            //EXERCISE

            Test.startTest();
            String response = CliProxy.doPost();
            Test.stopTest();

            //VERIFY

            WorkSetService.Response resp = (WorkSetService.Response) JSON.deserialize(response, WorkSetService.Response.class);
            Assert.areEqual(CliSfDataWrapper.StatusResult.OK.name(), resp.status, 'Status should be OK.');
            Assert.areEqual('Action Required: dev2 is out of sync. It\'s recommended to sync this environment from the Pipeline Manager before committing new changes.', resp.message, 'CLI response should have the Warning message.');
        }
    }

    // PRIVATE

    private static String getConfigFile() {
        return '{"Vlocity": {"rootfolder": "{$Context.Property.vlocity_root_folder}/**","defaultFolder": "vlocity/**"' +
            +'},"Category-X" : {"rootfolder" : "{$Context.Property.dynamic_expression_resolver}"},"SFDX": {"rootfolder": [],"config": {"filepath": "sfdx-project.json","property": "packageDirectories[].path"},' +
            +'"defaultFolder": "force-app","exclude": {"filePattern": ["**/__tests__/**", "**/.eslintrc.json", "**/jsconfig.json"]}' +
            +'},"Other": {"default": true}}';
    }

    private static String getResolvedConfigFile() {
        return '{"Vlocity": {"rootfolder": "Vlocity Test Folder/**","defaultFolder": "vlocity/**"' +
            +'},"Category-X" : {"rootfolder" : "Expression Value"},"SFDX": {"rootfolder": [],"config": {"filepath": "sfdx-project.json","property": "packageDirectories[].path"},' +
            +'"defaultFolder": "force-app","exclude": {"filePattern": ["**/__tests__/**", "**/.eslintrc.json", "**/jsconfig.json"]}' +
            +'},"Other": {"default": true}}';
    }

    private static User_Story__c getUserStory(String title) {
        return [SELECT Id, Name, Project__c, Platform__c, Org_Credential__c FROM User_Story__c WHERE User_Story_Title__c = :title];
    }

    private static void mockRequest(String name, String value) {
        String credentialName = null;
        mockRequest(name, value, credentialName);
    }

    private static void mockRequest(String name, String value, String credentialName) {
        WorkSetService.Request wrks = new WorkSetService.Request();
        wrks.value = value;
        wrks.criteria = name;
        wrks.credentialName = credentialName;

        CliProxy.CLIWrapper reqBody = new CliProxy.CLIWrapper();
        reqBody.mainService = 'work';
        reqBody.subService = 'set';
        reqBody.body = JSON.serialize(wrks);

        RestContext.request = Test_CliProxy.commonRequest(JSON.serialize(reqBody));
    }

    private static void createPromotionsExceptEnvironment(Id envId) {
        List<Promoted_User_Story__c> promotedUserStories = new List<Promoted_User_Story__c>();
        for(Deployment_Flow_Step__c connectionStep: [Select Source_Environment__c, Destination_Environment__c FROM Deployment_Flow_Step__c]) {
           if(connectionStep.Source_Environment__c != envId) {
            Promotion__c promotion = (Promotion__c) new Promotion()
                                                    .projectId([SELECT Id FROM Project__c LIMIT 1].Id)
                                                    .sourceEnvId(connectionStep.Source_Environment__c)
                                                    .destinationEnvId(connectionStep.Destination_Environment__c)
                                                    .status('Completed')
                                                    .persist();

            Promoted_User_Story__c promotedUserStory = new Promoted_User_Story__c(
                User_Story__c = getUserStory('US-1').Id,
                Promotion__c = promotion.Id
            );
            promotedUserStories.add(promotedUserStory);
           }
        }

        insert promotedUserStories;
    }
}