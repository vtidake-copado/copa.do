public with sharing class CredentialsServiceImpl {
    private static final String UTF_8 = 'UTF-8';
    private static final String SANDBOX_TYPE = 'Sandbox';
    private static final String SCRATCH_ORG_TYPE = 'Scratch Org';

    @SuppressWarnings('PMD.ApexOpenRedirect')
    public static Credentials.AuthenticateCredentialResult authenticate(Credentials.AuthenticateCredentialRequest request) {
        Credentials.AuthenticateCredentialResult result = new Credentials.AuthenticateCredentialResult();
        User user = [SELECT API_URL__c FROM User WHERE Id = :UserInfo.getUserId() WITH USER_MODE LIMIT 1];
        Org__c credential = [SELECT Id, Org_Type__c, Custom_Domain__c FROM Org__c WHERE Id = :request.credentialId WITH USER_MODE LIMIT 1];
        List<String> urlParameters = new List<String>();
        urlParameters.add('?orgId=' + EncodingUtil.urlEncode(credential.Id, UTF_8));
        urlParameters.add('&url=' + EncodingUtil.urlEncode(user.API_URL__c, UTF_8));
        if (
            String.isNotBlank(credential.Org_Type__c) &&
            (credential.Org_Type__c == SANDBOX_TYPE || credential.Org_Type__c.startsWithIgnoreCase(SCRATCH_ORG_TYPE))
        ) {
            urlParameters.add('&sandbox=true');
        }
        if (String.isNotBlank(credential.Custom_Domain__c)) {
            urlParameters.add('&domain=' + EncodingUtil.urlEncode(credential.Custom_Domain__c, UTF_8));
        }
        urlParameters.add('&copadoOrgId=' + EncodingUtil.urlEncode(UserInfo.getOrganizationId(), UTF_8));
        urlParameters.add('&copadoUserId=' + EncodingUtil.urlEncode(UserInfo.getUserId(), UTF_8));
        urlParameters.add(
            '&signature=' + EncodingUtil.urlEncode(DeployAPI.encryptAPIKey(UserInfo.getOrganizationId() + UserInfo.getUserId()), UTF_8)
        );
        if (String.isNotBlank(request.startUrl)) {
            urlParameters.add('&startURL=' + EncodingUtil.urlEncode(request.startUrl, UTF_8));
        }
        result.authenticateUrl = Settings.server_url + '/Authorize/sforceLogin' + String.join(urlParameters, '');
        return result;
    }
}