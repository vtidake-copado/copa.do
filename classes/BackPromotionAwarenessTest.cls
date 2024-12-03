@isTest
private class BackPromotionAwarenessTest {

    @TestSetup
    private static void setupData() {
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

    @IsTest
    private static void getOutOfSyncBackPromotionsAndSystemPropertySuccessfuly() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            Set<Id> expectedResult;
            Id pipelineId = getPipeline().Id;
            Id environmentId = getEnvironment('dev2').Id;

            createPromotionsExceptEnvironment(environmentId);
            
            // Exercise
            Test.startTest();
            try {
                BackPromotionAwareness.Request request = new BackPromotionAwareness.Request(pipelineId, environmentId);
                expectedResult = BackPromotionAwareness.getOutOfSyncUserStories(request);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(1, expectedResult.size(), 'Response should have one back promotion');
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');

            System_Property__c property = [SELECT API_Name__c, Value__c FROM System_Property__c WHERE ParentId__c =: pipelineId];
            BackPromotionAwareness.Criteria propertyValue = (BackPromotionAwareness.Criteria) JSON.deserialize(property.Value__c, BackPromotionAwareness.Criteria.class);
            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);

            Assert.areEqual('backPromotionAwarenessCriteria', property.API_Name__c, 'System property with the API name should be present.');
            Assert.areEqual(new List<Id> {lastEnvFromPipeline}, propertyValue.triggerEnvironmentIds, 'System property with the API name should be present.');
        }
    }

    @IsTest
    private static void getOutOfSyncBackPromotionsSuccessfulyByUsingExistingSystemProperty() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            Set<Id> expectedResult;
            Id pipelineId = getPipeline().Id;
            Id environmentId = getEnvironment('dev2').Id;

            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);
            new SystemProperty().apiName('backPromotionAwarenessCriteria').value(JSON.serialize(new BackPromotionAwareness.Criteria(new List<Id> { lastEnvFromPipeline }, 'Status__c = \'Completed\''))).pipeline(pipelineId).persist();
            createPromotionsExceptEnvironment(environmentId);
            updateUserStoryStatus();

            // Exercise
            Test.startTest();
            try {
                BackPromotionAwareness.Request request = new BackPromotionAwareness.Request(pipelineId, environmentId);
                expectedResult = BackPromotionAwareness.getOutOfSyncUserStories(request);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(1, expectedResult.size(), 'Response should have one back promotion');
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');
        }
    }

    @IsTest
    private static void noOutOfSyncBackPromotionsOnCriteria() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            Set<Id> expectedResult;
            Id pipelineId = getPipeline().Id;
            Id environmentId = getEnvironment('dev2').Id;

            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);
            new SystemProperty().apiName('backPromotionAwarenessCriteria').value(JSON.serialize(new BackPromotionAwareness.Criteria(new List<Id> { lastEnvFromPipeline }, 'Status__c = \'Completed\''))).pipeline(pipelineId).persist();
            createPromotionsExceptEnvironment(environmentId);

            // Exercise
            Test.startTest();
            try {
                BackPromotionAwareness.Request request = new BackPromotionAwareness.Request(pipelineId, environmentId);
                expectedResult = BackPromotionAwareness.getOutOfSyncUserStories(request);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(0, expectedResult.size(), 'Response should have one back promotion');
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');
        }
    }

    private static User getUser() {
        return [SELECT Id, Email FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static void createData() {
        Credential dev1Credential = new Credential();
        Environment dev1 = new Environment().name('dev1').type('Sandbox').platform('Other').add(dev1Credential);
        Environment dev2 = new Environment().name('dev2').type('Sandbox').platform('Other').add(new Credential());
        Environment dev3 = new Environment().name('dev3').type('Sandbox').platform('Other').add(new Credential());
        Credential intCredential = new Credential();
        Environment integration = new Environment().name('int').type('Sandbox').platform('Other').add(intCredential);
        Environment uat = new Environment().name('uat').type('Sandbox').platform('Other').add(new Credential());
        Environment prod = new Environment().name('prod').type('Sandbox').platform('Other').add(new Credential());

        new Pipeline()
            .name('Pipeline_Name_With_Characters_More_Than_50_For_System_Property_Creation_Test')
            .active(true)
            .mainBranch('main')
            .setPlatform('Other')
            .add(new Connection(dev1, integration).branch('dev1'))
            .add(new Connection(dev2, integration).branch('dev2'))
            .add(new Connection(dev3, integration).branch('dev3'))
            .add(new Connection(integration, uat).branch('int'))
            .add(new Connection(uat, prod).branch('uat'))
            .add(new Project().add(new UserStory().credential(dev1Credential).add(new UserStoryMetadata().name('TestClass').type('ApexClass'))))
            .persist();
    }


    private static void createPromotionsExceptEnvironment(Id envId) {
        List<Promoted_User_Story__c> promotedUserStories = new List<Promoted_User_Story__c>();
        Id usId = [SELECT Id FROM User_Story__c LIMIT 1].Id;
        for(Deployment_Flow_Step__c connectionStep: [Select Source_Environment__c, Destination_Environment__c FROM Deployment_Flow_Step__c]) {
           if(connectionStep.Source_Environment__c != envId) {
            Promotion__c promotion = (Promotion__c) new Promotion()
                                                    .projectId(getProject().Id)
                                                    .sourceEnvId(connectionStep.Source_Environment__c)
                                                    .destinationEnvId(connectionStep.Destination_Environment__c)
                                                    .status('Completed')
                                                    .persist();

            Promoted_User_Story__c promotedUserStory = new Promoted_User_Story__c(
                User_Story__c = usId,
                Promotion__c = promotion.Id
            );
            promotedUserStories.add(promotedUserStory);
           }
        }

        insert promotedUserStories;
        
    }

    private static Deployment_Flow__c getPipeline() {
        return [SELECT Id FROM Deployment_Flow__c LIMIT 1];
    }

    private static Project__c getProject() {
        return [SELECT Id FROM Project__c LIMIT 1];
    }

    private static Environment__c getEnvironment(String name) {
        return [SELECT Id FROM Environment__c WHERE Name = :name LIMIT 1];
    }

    private static void updateUserStoryStatus() {
        User_Story__c us = [SELECT Id, Status__c FROM User_Story__c];
        us.Status__c = 'Completed';
        upsert us;
    }
}