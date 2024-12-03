@SuppressWarnings('PMD.AvoidGlobalModifier')
global inherited sharing class Credentials implements CopadoDomain {
    /*
        SENSITIVE METHOD
        - Changes in this method will potentially impact many usages and use cases.
        - Please get an architect approval before changing this method.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Quality Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this method must contain an architect approval.
    */
    global static AuthenticateCredentialResult authenticate(AuthenticateCredentialRequest request) {
        Savepoint sp = Database.setSavepoint();
        try {
            return CredentialsServiceImpl.authenticate(request);
        } catch (Exception e) {
            Database.rollback(sp);
            throw new ApplicationException(e.getMessage());
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class AuthenticateCredentialRequest implements CopadoServiceRequest {
        global Id credentialId;
        global String startUrl;
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class AuthenticateCredentialResult implements CopadoServiceResult {
        global String authenticateUrl;
    }
}