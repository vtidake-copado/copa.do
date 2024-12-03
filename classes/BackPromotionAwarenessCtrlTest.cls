@isTest
private class BackPromotionAwarenessCtrlTest {
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
    private static void environmentWhenOutOfSync() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            Boolean expectedResult;
            Id pipelineId = getPipeline().Id;
            Id environmentId = getEnvironment('dev2').Id;

            createPromotionsExceptEnvironment(environmentId);

            // Exercise
            Test.startTest();
            try {
                expectedResult = BackPromotionAwarenessCtrl.isEnviornmentOutOfSync(environmentId, pipelineId);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');
            Assert.areEqual(true, expectedResult, 'Environment should be out of sync.');

            System_Property__c property = [SELECT API_Name__c, Value__c FROM System_Property__c WHERE ParentId__c = :pipelineId];
            BackPromotionAwareness.Criteria propertyValue = (BackPromotionAwareness.Criteria) JSON.deserialize(
                property.Value__c,
                BackPromotionAwareness.Criteria.class
            );
            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);

            Assert.areEqual('backPromotionAwarenessCriteria', property.API_Name__c, 'System property with the API name should be present.');
            Assert.areEqual(
                new List<Id>{ lastEnvFromPipeline },
                propertyValue.triggerEnvironmentIds,
                'System property with the API name should be present.'
            );
        }
    }

    @IsTest
    private static void environmentIsNotOutOfSync() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            Boolean expectedResult;
            Id pipelineId = getPipeline().Id;
            Id environmentId = getEnvironment('dev2').Id;

            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);
            new SystemProperty()
                .apiName('backPromotionAwarenessCriteria')
                .value(JSON.serialize(new BackPromotionAwareness.Criteria(new List<Id>{ lastEnvFromPipeline }, 'Status__c = \'Completed\'')))
                .pipeline(pipelineId)
                .persist();
            createPromotionsExceptEnvironment(environmentId);

            // Exercise
            Test.startTest();
            try {
                expectedResult = BackPromotionAwarenessCtrl.isEnviornmentOutOfSync(environmentId, pipelineId);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');
            Assert.areEqual(false, expectedResult, 'Environment should not be out of sync.');
        }
    }

    @IsTest
    private static void getCriteriaFromSystemProperty() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            String expectedResult;
            Id pipelineId = getPipeline().Id;
            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);
            System_Property__c property = (System_Property__c) new SystemProperty()
                .apiName('backPromotionAwarenessCriteria')
                .value(JSON.serialize(new BackPromotionAwareness.Criteria(new List<Id>{ lastEnvFromPipeline }, 'Status__c = \'Completed\'')))
                .pipeline(pipelineId)
                .persist();

            // Exercise
            Test.startTest();
            try {
                expectedResult = BackPromotionAwarenessCtrl.getCriteriaFromSystemProperty(pipelineId, true);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');

            BackPromotionAwarenessCtrl.SystemPropertyCriteria result = (BackPromotionAwarenessCtrl.SystemPropertyCriteria) JSON.deserialize(
                expectedResult,
                BackPromotionAwarenessCtrl.SystemPropertyCriteria.class
            );
            Assert.areEqual(property.Id, result.systemPropertyId, 'System property Id should be returned');

            BackPromotionAwareness.Criteria criteria = (BackPromotionAwareness.Criteria) JSON.deserialize(
                result.value,
                BackPromotionAwareness.Criteria.class
            );
            Assert.areEqual(
                new List<Id>{ lastEnvFromPipeline },
                criteria.triggerEnvironmentIds,
                'System property Criteria should have last env of pipeline as trigger Environement.'
            );
            Assert.areEqual(
                'Status__c = \'Completed\'',
                criteria.userStoryFieldCriteria,
                'System property Criteria should have USer Story status criteria.'
            );
        }
    }

    @IsTest
    private static void getCriteriaIfSystemPropertyDoesNotExist() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            String expectedResult;
            Id pipelineId = getPipeline().Id;

            // Exercise
            Test.startTest();
            try {
                expectedResult = BackPromotionAwarenessCtrl.getCriteriaFromSystemProperty(pipelineId, true);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');

            BackPromotionAwarenessCtrl.SystemPropertyCriteria result = (BackPromotionAwarenessCtrl.SystemPropertyCriteria) JSON.deserialize(
                expectedResult,
                BackPromotionAwarenessCtrl.SystemPropertyCriteria.class
            );
            Assert.areEqual(null, result.systemPropertyId, 'System property Id should be returned');

            BackPromotionAwareness.Criteria criteria = (BackPromotionAwareness.Criteria) JSON.deserialize(
                result.value,
                BackPromotionAwareness.Criteria.class
            );
            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);
            Assert.areEqual(
                new List<Id>{ lastEnvFromPipeline },
                criteria.triggerEnvironmentIds,
                'System property Criteria should have last env of pipeline as trigger Environement.'
            );
            Assert.areEqual('', criteria.userStoryFieldCriteria, 'System property Criteria should have empty User Story status criteria.');
        }
    }

    @IsTest
    private static void getCriteriaIfSystemPropertyDoesNotExistAndUserDontHaveAccess() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            String expectedResult;
            Id pipelineId = getPipeline().Id;

            // Exercise
            Test.startTest();
            try {
                expectedResult = BackPromotionAwarenessCtrl.getCriteriaFromSystemProperty(pipelineId, false);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');

            BackPromotionAwarenessCtrl.SystemPropertyCriteria result = (BackPromotionAwarenessCtrl.SystemPropertyCriteria) JSON.deserialize(
                expectedResult,
                BackPromotionAwarenessCtrl.SystemPropertyCriteria.class
            );
            Assert.areEqual(null, result.systemPropertyId, 'System property Id should be returned');

            BackPromotionAwareness.Criteria criteria = (BackPromotionAwareness.Criteria) JSON.deserialize(
                result.value,
                BackPromotionAwareness.Criteria.class
            );
            Assert.areEqual(
                new List<Id>(),
                criteria.triggerEnvironmentIds,
                'System property Criteria should not return any trigger enviornment on missing permission'
            );
            Assert.areEqual('', criteria.userStoryFieldCriteria, 'System property Criteria should have empty User Story status criteria.');
        }
    }

    @IsTest
    private static void getAllEnvironmentsOfPipeline() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            String expectedResult;
            Id pipelineId = getPipeline().Id;

            // Exercise
            Test.startTest();
            try {
                expectedResult = BackPromotionAwarenessCtrl.getAllEnvironmentsOfPipeline(pipelineId);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');

            List<BackPromotionAwarenessCtrl.EnvironmentLookup> result = (List<BackPromotionAwarenessCtrl.EnvironmentLookup>) JSON.deserialize(
                expectedResult,
                List<BackPromotionAwarenessCtrl.EnvironmentLookup>.class
            );
            Assert.areEqual(6, result.size(), 'Number of environments from pipeline connection should be 6');
        }
    }

    @IsTest
    private static void createSystemPropertySuccessfully() {
        System.runAs(getUser()) {
            // Setup
            Exception expectedException;
            Id expectedResult;
            Id pipelineId = getPipeline().Id;
            Id lastEnvFromPipeline = BackPromotionAwareness.getLastEnvironmentOfPipeline(pipelineId);

            // Exercise
            Test.startTest();
            try {
                expectedResult = BackPromotionAwarenessCtrl.createSystemProperty(
                    pipelineId,
                    JSON.serialize(new BackPromotionAwareness.Criteria(new List<Id>{ lastEnvFromPipeline }, 'Status__c = \'Completed\''))
                );
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(null, expectedException, 'An exception should not be thrown');
            Assert.areEqual([SELECT Id FROM System_Property__c].Id, expectedResult, 'System property Id should be returned');
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
        for (Deployment_Flow_Step__c connectionStep : [SELECT Source_Environment__c, Destination_Environment__c FROM Deployment_Flow_Step__c]) {
            if (connectionStep.Source_Environment__c != envId) {
                Promotion__c promotion = (Promotion__c) new Promotion()
                    .projectId(getProject().Id)
                    .sourceEnvId(connectionStep.Source_Environment__c)
                    .destinationEnvId(connectionStep.Destination_Environment__c)
                    .status('Completed')
                    .persist();

                Promoted_User_Story__c promotedUserStory = new Promoted_User_Story__c(User_Story__c = usId, Promotion__c = promotion.Id);
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