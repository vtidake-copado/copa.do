@IsTest
private with sharing class UserStoryCommitServiceImplTest {
    @TestSetup
    private static void makeData() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .alias('TestUsr1')
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().executeAutomations())
            .persist();
        new User_t()
            .alias('TestUsr2')
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().executeAutomations())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    @IsTest
    private static void retrieveUserStoryCommits() {
        System.runAs(getUser()) {
            // Setup
            User_Story__c userStory = getUserStory();
            Org__c credential = getCredential('dev1');
            new UserStoryCommit(new SnapshotCommit().credentialId(credential.Id)).userStoryId(userStory.Id).persist();

            Promotions.UserStoryCommitServiceRequest commitRequest = new Promotions.UserStoryCommitServiceRequest();
            commitRequest.userStoryIds = new Set<Id>{ userStory.Id };
            Promotions.UserStoryCommitServiceResult commitResult = new Promotions.UserStoryCommitServiceResult();

            // Exercise
            Test.startTest();
            commitResult = Promotions.UserStoryCommitService.retrieve(commitRequest);
            Test.stopTest();

            // Verify
            System.assertEquals(1, commitResult.userStoryCommits.size(), 'There should be one user story commit returned');
        }
    }

    private static void createData() {
        Credential dev1Credential = new Credential();
        Environment dev1 = new Environment().name('dev1').type('Sandbox').platform('Other').add(dev1Credential);
        Environment prod = new Environment().name('prod').type('Sandbox').platform('Other').add(new Credential());

        new Pipeline()
            .active(true)
            .mainBranch('main')
            .setPlatform('Other')
            .add(new Connection(dev1, prod).branch('dev1'))
            .add(new Project().add(new UserStory().credential(dev1Credential).add(new UserStoryMetadata().name('TestClass').type('ApexClass'))))
            .persist();
    }

    private static User getUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' AND Alias = 'TestUsr1' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static User_Story__c getUserStory() {
        return [SELECT Id, Promote_Change__c FROM User_Story__c LIMIT 1];
    }

    private static Org__c getCredential(String name) {
        return [SELECT Id FROM Org__c WHERE Environment__r.Name = :name LIMIT 1];
    }
}