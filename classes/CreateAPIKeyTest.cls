@isTest
private class CreateAPIKeyTest {
    @TestSetup
    private static void setupData() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().functions())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .persist();

        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
        }
    }

    @IsTest
    private static void testApiKeyCreation() {
        User user = getRunAsUser();
        System.runAs(user) {
            // SETUP
            String response = '{"ok":"API Key generated","api_key":"new key value"}';
            Test.setMock(HttpCalloutMock.class, new testHttpCalloutMock(response, null));

            // EXERCISE
            Test.startTest();
            new CreateAPIKey(new List<Id>{ user.Id }).execute();
            Test.stopTest();

            // VERIFY
            Assert.areEqual('new key value', DeployAPI.getUserAPIKey(), 'The API key matches');
        }
    }

    @IsTest
    private static void testApiKeyCreationIncorrectResponse() {
        User user = getRunAsUser();
        System.runAs(user) {
            // SETUP
            String response = '{"info":"API Key not generated"}';
            Test.setMock(HttpCalloutMock.class, new testHttpCalloutMock(response, null));

            // EXERCISE
            Test.startTest();
            System.enqueueJob(new CreateAPIKey(new List<Id>{ user.Id }));
            Test.stopTest();

            // VERIFY
            Assert.areEqual(null, DeployAPI.getUserAPIKey(), 'The API key is not null');
        }
    }

    @IsTest
    private static void testApiKeyCreationWithEmptyList() {
        User user = getRunAsUser();
        System.runAs(user) {
            // EXERCISE
            Test.startTest();
            new CreateAPIKey(new List<Id>()).execute();
            Test.stopTest();

            // VERIFY
            Assert.areEqual(null, DeployAPI.getUserAPIKey(), 'The API key is not null');
        }
    }

    private static User getRunAsUser() {
        return [SELECT Id, Email FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }
}