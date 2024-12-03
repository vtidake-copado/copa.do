@IsTest
private class CopadoCredentialTest {

    @TestSetup
    private static void insertData() {
        User user = (User) new User_t()
                                .standard()
                                .alias('Standard')
                                .assign(new PermissionSetAssignment_t().copadoUser())
                                .persist();

        System.runAs(user) {
            TestUtilities.setTestSettingsEE();
        }
    }


    @IsTest
    private static void getLoginUrl() {
        System.runAs(standardUser()) {
            // Setup
            Org__c credential = (Org__c) new Credential().name('testCred').persist();
            String startUrl = 'https://salesforce.com/starturl';

            // Exercise
            Test.startTest();
            String result = CopadoCredential.getLoginUrl(new CopadoCredential.EndPointRequest(startUrl, credential.Id));
            Test.stopTest();

            // Verify
            Assert.isNotNull(result);
        }
    }


    @IsTest
    private static void getLoginUrlWithInvalidRequest() {
        System.runAs(standardUser()) {
            // Setup
            Exception expectedException = null;

            // Exercise
            try {
                CopadoCredential.getLoginUrl(new CopadoCredential.EndPointRequest(null, null));
            } catch(Exception ex) {
                expectedException = ex;
            }

            // Verify
            Assert.isNotNull(expectedException);
        }
    }


    // PRIVATE

    private static User standardUser() {
        return [SELECT Id FROM User WHERE Alias = 'Standard'];
    }
}