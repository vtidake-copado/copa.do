public with sharing class RegisterCopadoContinuation {
    public MetadataService.SaveResult[] remoteSiteSettingResult;
    public MetadataService.SaveResult[] namedCredentialResult;
    public String fullName;
    public String url;

    public RegisterCopadoContinuation(String fullName, String url) {
        this.fullName = fullName;
        this.url = url;
    }

    public Object invokeInitialRequest() {
        // Create continuation with a timeout
        Continuation con = new Continuation(120);
        // Set callback method
        con.continuationMethod = 'processInitialResponse';
        MetadataService.MetadataPort service = new MetadataService.MetadataPort();
        service.SessionHeader = new MetadataService.SessionHeader_element();
        service.SessionHeader.sessionId = UserInfo.getSessionId();
        //Metadata for remote site settings
        MetadataService.RemoteSiteSetting remoteSiteSettings = new MetadataService.RemoteSiteSetting();
        remoteSiteSettings.fullName = this.fullName;
        remoteSiteSettings.url = this.url;
        remoteSiteSettings.description = 'Remote site settings created from registertion of copado';
        remoteSiteSettings.isActive = true;
        remoteSiteSettings.disableProtocolSecurity = false;
        this.remoteSiteSettingResult = service.createMetadata(new List<MetadataService.Metadata>{ remoteSiteSettings });

        //Metadata Service
        MetadataService.MetadataPort service1 = new MetadataService.MetadataPort();
        service1.SessionHeader = new MetadataService.SessionHeader_element();
        service1.SessionHeader.sessionId = UserInfo.getSessionId();
        MetadataService.NamedCredential credential = new MetadataService.NamedCredential();
        credential.fullName = this.fullName;
        credential.label = this.fullName;
        credential.endpoint = this.url;
        credential.principalType = 'NamedUser';
        credential.protocol = 'NoAuthentication';
        credential.allowMergeFieldsInHeader = true;
        credential.generateAuthorizationHeader = false;
        this.namedCredentialResult = service1.createMetadata(new List<MetadataService.Metadata>{ credential });

        RegisterCopado.setDefaultSettings(this.url);
        return con;
    }
    // Callback method for initial request
    public Object processInitialResponse() {
        System.debug('getting response in ');
        Continuation chainedContinuation = null;
        // Chain continuation if some condition is met
        // Create a second continuation
        chainedContinuation = new Continuation(120);
        // Set callback method
        chainedContinuation.continuationMethod = 'processChainedResponse';
        // Add callout request to continuation
        //this.requestLabel2 = chainedContinuation.addHttpRequest(req);
        RegisterCopado.setUpCopadoRegistration();
        // Start another continuation
        return chainedContinuation;
    }
    // Callback method for chained request
    public Object processChainedResponse() {
        return null;
    }
}