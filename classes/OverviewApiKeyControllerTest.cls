@IsTest
private class OverviewApiKeyControllerTest {
    @TestSetup
    private static void makeData() {
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
        }
    }

    @IsTest
    static void testHasApiKey_WithKey() {
        System.runAs(getRunAsUser()) {
            // Setup: Create Personal Settings with API Key
            Personal_Settings__c settings = new Personal_Settings__c();
            settings.API_Key__c = 'test-api-key-123';
            settings.SetupOwnerId = UserInfo.getUserId();
            insert settings;
            
            // Execute: Call the method
            Test.startTest();
            Boolean result = OverviewApiKeyController.hasApiKey();
            Test.stopTest();
            
            // Verify: Should return true since API Key exists
            System.assertEquals(true, result, 'Should return true when API Key exists');
        }
    }

    @IsTest
    static void testHasApiKey_WithoutKey() {
        System.runAs(getRunAsUser()) {
            // Setup: Create Personal Settings without API Key
            Personal_Settings__c settings = new Personal_Settings__c();
            settings.SetupOwnerId = UserInfo.getUserId();
            insert settings;
            
            // Execute: Call the method
            Test.startTest();
            Boolean result = OverviewApiKeyController.hasApiKey();
            Test.stopTest();
            
            // Verify: Should return false since API Key is null
            System.assertEquals(false, result, 'Should return false when API Key is null');
        }
    }

    @IsTest
    static void testHasApiKey_NoSettings() {
        System.runAs(getRunAsUser()) {
            // Setup: No Personal Settings record exists
            
            // Execute: Call the method
            Test.startTest();
            Boolean result = OverviewApiKeyController.hasApiKey();
            Test.stopTest();
            
            // Verify: Should return false since no settings exist
            System.assertEquals(false, result, 'Should return false when no settings exist');
        }
    }

    @IsTest
    static void testHasApiKeyException() {
        System.runAs(getRunAsUser()) {
            // Execute and verify exception
            Test.startTest();
            try {
                Boolean result = OverviewApiKeyController.hasApiKey(true);
                System.assert(false, 'Expected exception was not thrown');
            } catch (AuraHandledException e) {
                // Verify exception was thrown and handled correctly
                System.assert(e.getMessage().length() > 0, 'Exception message should not be empty');
            }
            Test.stopTest();
        }
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }
}