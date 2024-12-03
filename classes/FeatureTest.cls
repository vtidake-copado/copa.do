@IsTest
private class FeatureTest {
    @TestSetup
    private static void setupData() {
        insertData();
    }

    @isTest
    private static void executeForEnabledCCH() {
        System.runAs(getTestUser()) {
            // Exercise
            Boolean isEnabled = Feature.isCCHEnabled();

            // Verify
            Assert.isTrue(isEnabled, 'CCH feature is enabled and the user has license too');
        }
    }

    @IsTest
    private static void executeForEnabledCCM() {
        System.runAs(getTestUser()) {
            // Exercise
            Boolean isEnabled = Feature.isCCMEnabled();

            // Verify
            Assert.isTrue(isEnabled, 'CCM feature is enabled and the user has license too');
        }
    }

    @IsTest
    private static void executeToCheckIfApplicationIsRegistered() {
        // Setup
        Settings__c orgDefaultSetting = Settings__c.getOrgDefaults();

        orgDefaultSetting.Server_URL__c = 'TestServerURL';
        upsert orgDefaultSetting;

        System.runAs(getTestUser()) {
            // Exercise
            Boolean isRegistered = Feature.isApplicationRegistered();

            // Verify
            Assert.isTrue(isRegistered, 'The application is not registered');
        }
    }

    @IsTest
    private static void checkApplicationRegisterationWithoutServerUrl() {
        // Setup
        Settings__c orgDefaultSetting = Settings__c.getOrgDefaults();

        orgDefaultSetting.Server_URL__c = '';
        upsert orgDefaultSetting;

        System.runAs(getTestUser()) {
            // Exercise
            Boolean isRegistered = Feature.isApplicationRegistered();

            // Verify
            Assert.isFalse(isRegistered, 'The application is registered');
        }
    }

    @IsTest
    private static void executeAutomateGovOrgEnabled() {
        System.runAs(getTestUser()) {
            // Setup
            Exception excep;

            // Exercise
            try {
                Feature.isAutomateGovOrgEnabled();
            } catch (Exception ex) {
                excep = ex;
            }

            // Verify
            Assert.isNull(excep, 'There is no exception.');
        }
    }

    // HELPER

    private static void insertData() {
        User adminUser = setupUser();
        System.runAs(adminUser) {
            TestUtilities.assignLicense(String.valueOf(adminUser.Username), true, true, true, true, true);

            Personal_Settings__c personalSettings = Personal_Settings__c.getInstance();
            personalSettings.API_Key__c = 'Test Api Key';
            upsert personalSettings;
        }
    }

    private static User setupUser() {
        ITestDefaults userCreation = new CopadoSetupTestDefaults.UserDefaults().createRunAsUsers().executeDML();
        User adminUser = userCreation.getRunAsUsers().get('Admin')[0];

        return adminUser;
    }

    private static User getTestUser() {
        User testUser = [SELECT Id, Name, LastName, Email, Username FROM User WHERE Email = 'test@test.org' LIMIT 1].get(0);
        TestUtilities.assignLicense(String.valueOf(testUser.Username), true, true, true, true, true);

        return testUser;
    }
}