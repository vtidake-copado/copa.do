@SuppressWarnings('PMD.AvoidGlobalModifier')
global with sharing class CopadoCredential implements CopadoDomain {
    global static String getLoginUrl(EndPointRequest request) {
        if (String.isBlank(request.credentialId)) {
            throw new ApplicationException(Label.MissingCredentialId);
        }

        try {
            String urlParameters = buildUrlParameters(request);

            return new PageReference(oauthUrl(urlParameters)).getURL();
        } catch (Exception e) {
            throw new ApplicationException(e.getMessage());
        }
    }


    // PRIVATE

    private static String buildUrlParameters(EndPointRequest request) {
        String apiURL = getEncodedApiURL();
        Org__c credential = [SELECT Id, Org_Type__c, Custom_Domain__c FROM Org__c WHERE Id = :request.credentialId WITH USER_MODE];

        String urlParameters = '?orgId=' + EncodingUtil.urlEncode(request.credentialId, 'UTF-8')
            + '&url=' + apiURL
            + getSandboxParameter(credential)
            + getDomainParameter(credential)
            + '&copadoOrgId=' + EncodingUtil.urlEncode(UserInfo.getOrganizationId(), 'UTF-8')
            + '&startURL=' + EncodingUtil.urlEncode(request.startUrl, 'UTF-8')
            + '&copadoUserId=' + EncodingUtil.urlEncode(UserInfo.getUserId(), 'UTF-8')
            + '&signature=' + EncodingUtil.urlEncode(DeployAPI.encryptAPIKey(UserInfo.getOrganizationId() + UserInfo.getUserId()), 'UTF-8');

        return urlParameters;
    }


    private static String getEncodedApiURL() {
        return EncodingUtil.urlEncode(
            [SELECT API_URL__c FROM User WHERE Id = :UserInfo.getUserId() WITH USER_MODE].API_URL__c,
            'UTF-8'
        );
    }


    private static String getSandboxParameter(Org__c credential) {
        if (credential.Org_Type__c == 'Sandbox' ||
            (String.isNotBlank(credential.Org_Type__c) && credential.Org_Type__c.startsWithIgnoreCase('Scratch Org'))) {
            return '&sandbox=true';
        }

        return '';
    }


    private static String getDomainParameter(Org__c credential) {
        if (credential.Org_Type__c == 'Custom Domain') {
            return '&domain=' + EncodingUtil.urlEncode(credential.Custom_Domain__c, 'UTF-8');
        }
        return '';
    }


    private static String oauthUrl(String urlParameters) {
        String herokuServer = Settings.server_url;
        return herokuServer + '/Authorize/sforceLogin' + urlParameters;
    }


    // INNER

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class EndPointRequest implements CopadoServiceRequest {
        global String startUrl;
        global Id credentialId;

        global EndPointRequest(String startUrl, Id credentialId) {
            this.startUrl = startUrl;
            this.credentialId = credentialId;
        }
    }
}