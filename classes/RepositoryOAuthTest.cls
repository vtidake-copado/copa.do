@IsTest
private class RepositoryOAuthTest {
    @TestSetup
    private static void insertData() {
        User user = (User) new User_t().standard().alias('Standard').assign(new PermissionSetAssignment_t().copadoUser()).persist();

        System.runAs(user) {
            TestUtilities.setTestSettingsEE();
        }
    }

    @IsTest
    private static void getLoginUrl() {
        System.runAs(standardUser()) {
            // Setup
            Git_Repository__c repository = (Git_Repository__c) new GitRepository()
                .name('testRepo')
                .uri('https://github.com/account/repoName')
                .persist();
            String loginUrl = 'https://github.com/login/oauth/authorize?client_id=xxx';
            Test.setMock(HttpCalloutMock.class, new GitMock(302).redirectUrl(loginUrl));

            // Exercise
            Test.startTest();
            String result = RepositoryOAuth.getLoginUrl(new RepositoryOAuth.LoginUrlRequest('github', repository.Id, ''));
            Test.stopTest();

            // Verify
            Assert.areEqual(loginUrl, result);
        }
    }

    @IsTest
    private static void getLoginUrlWithError() {
        System.runAs(standardUser()) {
            // Setup
            Git_Repository__c repository = (Git_Repository__c) new GitRepository()
                .name('testRepo')
                .uri('https://github.com/account/repoName')
                .persist();
            Exception expectedException = null;
            Test.setMock(HttpCalloutMock.class, new GitMock(500).body('Internal server error'));

            // Exercise
            Test.startTest();
            try {
                RepositoryOAuth.getLoginUrl(new RepositoryOAuth.LoginUrlRequest('github', repository.Id, ''));
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual('Status: 500, Response: Internal server error', expectedException.getMessage());
        }
    }

    @IsTest
    private static void addSSHKey() {
        Exception expectedException = null;

        System.runAs(standardUser()) {
            try {
                // Setup
                Git_Repository__c repository = (Git_Repository__c) new GitRepository()
                    .name('testRepo')
                    .uri('https://github.com/account/repoName')
                    .persist();
                String callbackUrl = 'https://salesforce.com/xxx';
                Test.setMock(HttpCalloutMock.class, new GitMock(302).redirectUrl(callbackUrl));

                // Exercise
                RepositoryOAuth.AddSSHKeyRequest request = new RepositoryOAuth.AddSSHKeyRequest();
                request.recordId = repository.Id;
                Test.startTest();
                RepositoryOAuth.addSSHKey(request);
                Test.stopTest();
            } catch (Exception ex) {
                expectedException = ex;
            }

            // Verify
            Assert.areEqual(null, expectedException);
        }
    }

    @IsTest
    private static void addSSHKeyWithError() {
        System.runAs(standardUser()) {
            // Setup
            Exception expectedException = null;
            Test.setMock(HttpCalloutMock.class, new GitMock(500).body('Internal server error'));

            // Exercise
            Test.startTest();
            try {
                RepositoryOAuth.addSSHKey(new RepositoryOAuth.AddSSHKeyRequest());
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            Assert.areEqual('Status: 500, Response: Internal server error', expectedException.getMessage());
        }
    }

    @IsTest
    private static void validate() {
        System.runAs(standardUser()) {
            // Setup
            Git_Repository__c repository = (Git_Repository__c) new GitRepository()
                .name('testRepo')
                .uri('https://github.com/account/repoName')
                .persist();

            Test.setMock(HttpCalloutMock.class, new GitMock(200).body('{"ok": "Success"}'));

            // Exercise
            Test.startTest();
            Boolean result = RepositoryOAuth.isAuthenticated(repository.Id);
            Test.stopTest();

            // Verify
            Assert.isTrue(result);
        }
    }

    // PRIVATE

    private static User standardUser() {
        return [SELECT Id FROM User WHERE Alias = 'Standard'];
    }

    // INNER

    public class GitMock implements HttpCalloutMock {
        private Integer statusCode;
        private String redirectUrl;
        private String body;

        public GitMock(Integer statusCode) {
            this.statusCode = statusCode;
        }

        public GitMock redirectUrl(String redirectUrl) {
            this.redirectUrl = redirectUrl;

            return this;
        }

        public GitMock body(String body) {
            this.body = body;

            return this;
        }

        public HTTPResponse respond(HTTPRequest req) {
            HttpResponse res = new HttpResponse();
            if (redirectUrl != null) {
                res.setHeader('Location', redirectUrl);
            }
            if (statusCode != null) {
                res.setStatusCode(statusCode);
            }
            if (body != null) {
                res.setBody(body);
            }

            return res;
        }
    }
}