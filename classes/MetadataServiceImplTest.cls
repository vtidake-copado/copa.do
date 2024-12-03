@IsTest
private with sharing class MetadataServiceImplTest {
    @TestSetup
    private static void setupData() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().functions())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().configureAutomations())
            .assign(new PermissionSetAssignment_t().qualityGatesAdmin())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    @IsTest
    private static void retrieveUserStoryMetadatas() {
        System.runAs(getRunAsUser()) {
            // Setup
            User_Story__c userStory = getUserStory('US1');

            Promotions.MetadataServiceRequest metadataRequest = new Promotions.MetadataServiceRequest();
            metadataRequest.userStoryIds = new Set<Id>{ userStory.Id };
            Promotions.MetadataServiceResult metadataResult = new Promotions.MetadataServiceResult();

            // Exercise
            Test.startTest();
            metadataResult = Promotions.MetadataService.retrieve(metadataRequest);
            Test.stopTest();

            // Verify
            System.assertEquals(1, metadataResult.userStoryMetadatas.size(), 'There should be one user story metadata returned');
        }
    }

    private static void createData() {
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
    }

    private static User_Story__c getUserStory(String userStoryTitle) {
        return [SELECT Id FROM User_Story__c WHERE User_Story_Title__c = :userStoryTitle LIMIT 1];
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }
}