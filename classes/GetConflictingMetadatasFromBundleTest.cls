@IsTest
private class GetConflictingMetadatasFromBundleTest {
    @TestSetup
    private static void testSetup() {
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
    private static void performExecuteWithInvalidPackageVersionId() {
        System.runAs(getUser()) {
            // SETUP

            Id packageVersionId = null;
            Exception expectedException;

            // EXERCISE

            Test.startTest();
            try {
                GetConflictingMetadatasFromBundle getConflictingMetadatasFromBundle = new GetConflictingMetadatasFromBundle(packageVersionId);
                getConflictingMetadatasFromBundle.execute();
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // VERIFY

            Assert.isTrue(expectedException.getMessage().contains(Label.Invalid_Package_Version_Id), 'The exception message is incorrect');
        }
    }

    @IsTest
    private static void performExecuteWithNonConflictingBundle() {
        System.runAs(getUser()) {
            // SETUP

            List<User_Story_Metadata__c> userStoryMetadatas = new List<User_Story_Metadata__c>();
            List<User_Story__c> userStories = getUserStories();
            userStoryMetadatas.add(
                new User_Story_Metadata__c(User_Story__c = userStories[0].Id, Metadata_API_Name__c = 'Test1', Type__c = 'ApexPage', Action__c = 'Add')
            );
            userStoryMetadatas.add(
                new User_Story_Metadata__c(User_Story__c = userStories[1].Id, Metadata_API_Name__c = 'Test2', Type__c = 'ApexPage', Action__c = 'Add')
            );
            userStoryMetadatas.add(
                new User_Story_Metadata__c(User_Story__c = userStories[2].Id, Metadata_API_Name__c = 'Test3', Type__c = 'ApexPage', Action__c = 'Add')
            );
            insert userStoryMetadatas;
            Artifact_Version__c packageVersion = getPackageVersion();

            // EXERCISE

            Test.startTest();
            GetConflictingMetadatasFromBundle getConflictingMetadatasFromBundle = new GetConflictingMetadatasFromBundle(packageVersion.Id);
            List<User_Story_Metadata__c> result = getConflictingMetadatasFromBundle.execute();
            Test.stopTest();

            // VERIFY

            Assert.isTrue(result.isEmpty(), 'No conflicting user story metadata should be found');
        }
    }

    @IsTest
    private static void performExecuteWithDeleteActionForAllMetadata() {
        System.runAs(getUser()) {
            // SETUP

            List<User_Story_Metadata__c> userStoryMetadatas = new List<User_Story_Metadata__c>();
            List<User_Story__c> userStories = getUserStories();
            userStoryMetadatas.add(
                new User_Story_Metadata__c(
                    User_Story__c = userStories[0].Id,
                    Metadata_API_Name__c = 'Test1',
                    Type__c = 'ApexPage',
                    Action__c = 'Delete'
                )
            );
            userStoryMetadatas.add(
                new User_Story_Metadata__c(
                    User_Story__c = userStories[1].Id,
                    Metadata_API_Name__c = 'Test1',
                    Type__c = 'ApexPage',
                    Action__c = 'Delete'
                )
            );
            userStoryMetadatas.add(
                new User_Story_Metadata__c(
                    User_Story__c = userStories[2].Id,
                    Metadata_API_Name__c = 'Test1',
                    Type__c = 'ApexPage',
                    Action__c = 'Delete'
                )
            );
            insert userStoryMetadatas;
            Artifact_Version__c packageVersion = getPackageVersion();

            // EXERCISE

            Test.startTest();
            GetConflictingMetadatasFromBundle getConflictingMetadatasFromBundle = new GetConflictingMetadatasFromBundle(packageVersion.Id);
            List<User_Story_Metadata__c> result = getConflictingMetadatasFromBundle.execute();
            Test.stopTest();

            // VERIFY

            Assert.isTrue(result.isEmpty(), 'No conflicting user story metadata should be found');
        }
    }

    @IsTest
    private static void performExecuteWithConflictingBundle() {
        System.runAs(getUser()) {
            // SETUP

            List<User_Story_Metadata__c> userStoryMetadatas = new List<User_Story_Metadata__c>();
            List<User_Story__c> userStories = getUserStories();
            userStoryMetadatas.add(
                new User_Story_Metadata__c(
                    User_Story__c = userStories[0].Id,
                    Metadata_API_Name__c = 'Test1',
                    Type__c = 'ApexPage',
                    Action__c = 'Delete'
                )
            );
            userStoryMetadatas.add(
                new User_Story_Metadata__c(User_Story__c = userStories[1].Id, Metadata_API_Name__c = 'Test1', Type__c = 'ApexPage', Action__c = 'Add')
            );
            userStoryMetadatas.add(
                new User_Story_Metadata__c(User_Story__c = userStories[2].Id, Metadata_API_Name__c = 'Test2', Type__c = 'ApexPage', Action__c = 'Add')
            );
            insert userStoryMetadatas;
            Artifact_Version__c packageVersion = getPackageVersion();

            // EXERCISE

            Test.startTest();
            GetConflictingMetadatasFromBundle getConflictingMetadatasFromBundle = new GetConflictingMetadatasFromBundle(packageVersion.Id);
            List<User_Story_Metadata__c> result = getConflictingMetadatasFromBundle.execute();
            Test.stopTest();

            // VERIFY

            Set<String> actions = new Set<String>{ 'Add', 'Delete' };
            Assert.areEqual(2, result.size(), 'Two conflicting user story metadata should be found');
            for (User_Story_Metadata__c userStoryMetadata : result) {
                Assert.areEqual('Test1', userStoryMetadata.Metadata_API_Name__c, 'The metadata api name of the user story metadata is incorrect');
                Assert.areEqual('ApexPage', userStoryMetadata.Type__c, 'The metadata type of the user story metadata is incorrect');
                Assert.isTrue(actions.contains(userStoryMetadata.Action__c), 'The action of the user story metadata is incorrect');
            }
        }
    }

    private static User getUser() {
        return [SELECT Id, Email FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static void createData() {
        Id recordTypeId = Schema.SObjectType.Artifact__c.getRecordTypeInfosByDeveloperName().get('User_Story_Bundle').getRecordTypeId();
        new Package_t().name('Test').recordTypeId(recordTypeId).add(new PackageVersion());
        new UserStory();
        new UserStory();
        new UserStory().persist();

        List<Bundled_Story__c> bundledStories = new List<Bundled_Story__c>();
        Artifact_Version__c packageVersion = getPackageVersion();
        for (User_Story__c userStory : getUserStories()) {
            bundledStories.add(new Bundled_Story__c(Package_Version__c = packageVersion.Id, User_Story__c = userStory.Id));
        }
        insert bundledStories;
    }

    private static Artifact_Version__c getPackageVersion() {
        return [SELECT Id FROM Artifact_Version__c];
    }

    private static List<User_Story__c> getUserStories() {
        return [SELECT Id FROM User_Story__c];
    }
}