@IsTest
private class CredentialsTest {
    @TestSetup
    private static void setup() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t().assign(new PermissionSetAssignment_t().copadoUser()).persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    @IsTest
    private static void authenticate() {
        System.runAs(getRunAsUser()) {
            // Setup
            Org__c credential = getCredential();
            Credentials.AuthenticateCredentialRequest request = new Credentials.AuthenticateCredentialRequest();
            request.credentialId = credential.Id;
            request.startUrl = 'goToUrl';

            // Exercise
            Test.startTest();
            Credentials.AuthenticateCredentialResult result = Credentials.authenticate(request);
            Test.stopTest();

            // Verify
            System.assertNotEquals(null, result.authenticateUrl, 'Authentication Url should be returned');
        }
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Org__c getCredential() {
        return [SELECT Id FROM Org__c LIMIT 1];
    }

    private static void createData() {
        new Environment().name('dev1').type('Sandbox').platform('Other').add(new Credential()).persist();
    }
}