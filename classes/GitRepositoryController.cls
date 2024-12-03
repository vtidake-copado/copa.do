@SuppressWarnings('PMD.CognitiveComplexity')
public with sharing class GitRepositoryController {
    private static final String REPOSITORIES = 'Repositories';

    // PUBLIC

    @AuraEnabled(cacheable=false)
    public static Configuration init(Id recordId) {
        if (!hasLicense()) {
            throw new AuraHandledException(Label.CE_License_Restriction.replace('__License__', Label.CCH_License));
        }

        try {
            return new Configuration(RepositoryOAuth.init(recordId));
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    @AuraEnabled(cacheable=false)
    public static String validateGitConnection(Id repositoryId) {
        try {
            return RepositoryOAuth.validateGitConnection(repositoryId);
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    @AuraEnabled
    public static String createSSHKey(Id repositoryId) {
        try {
            return RepositoryOAuth.createSSHKey(repositoryId);
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    @AuraEnabled(cacheable=false)
    public static void deleteSSHKey(Id attachmentId) {
        try {
            if (String.isNotBlank(attachmentId)) {
                List<Attachment> attachments = new AttachmentsSelector().byId(new Set<Id>{ attachmentId });

                if (!attachments.isEmpty()) {
                    Utilities.Secure_DML(attachments, Utilities.DML_Action.DEL, SObjectType.Attachment);
                }
            }
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    @AuraEnabled(cacheable=false)
    public static String getSSHKey(Id repositoryId) {
        try {
            return RepositoryOAuth.getSSHKey(repositoryId);
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    @AuraEnabled(cacheable=false)
    @SuppressWarnings('PMD.ExcessiveParameterList')
    public static void save(Id repositoryId, String authType, String username, String password, String extraHeaders) {
        try {
            if (String.isNotBlank(repositoryId) && !Utilities.HasEditAccess(repositoryId)) {
                throw new AuraHandledException(Label.InSuffPriv);
            }

            RepositoryOAuth.RepositoryAuthenticationRequest request = new RepositoryOAuth.RepositoryAuthenticationRequest();
            request.repositoryId = repositoryId;
            request.authType = authType;
            request.username = username;
            request.password = password;
            request.extraHeaders = extraHeaders;

            RepositoryOAuth.authenticate(request);
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    @AuraEnabled(cacheable=false)
    public static String getLoginURI(String provider, Id repositoryId, String redirectURI) {
        String result;

        try {
            result = RepositoryOAuth.getLoginUrl(new RepositoryOAuth.LoginUrlRequest(provider, repositoryId, redirectURI));
        } catch (Exception ex) {
            throw new ApplicationException().auraHandled(ex);
        }

        return result;
    }

    @AuraEnabled(cacheable=false)
    public static String getExistingRepositories(Id repositoryId) {
        try {
            List<Attachment> result = [
                SELECT Id, ParentId, Body, Name
                FROM Attachment
                WHERE ParentId = :repositoryId AND Name = :REPOSITORIES
                WITH USER_MODE
            ];
            return result.isEmpty() ? null : result[0].Body.toString();
        } catch (Exception ex) {
            throw new ApplicationException().auraHandled(ex);
        }
    }

    @AuraEnabled(cacheable=false)
    public static void saveRepositorySelection(String serializedRequest) {
        try {
            GitRepoRequest request = (GitRepoRequest) JSON.deserialize(serializedRequest, GitRepoRequest.class);
            RepositoryOAuth.addSSHKey(asRepositoryRequest(request));
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    // PRIVATE

    private static RepositoryOAuth.AddSSHKeyRequest asRepositoryRequest(GitRepoRequest request) {
        RepositoryOAuth.AddSSHKeyRequest result = new RepositoryOAuth.AddSSHKeyRequest();
        result.recordId = request.recordId;
        result.repositoryId = request.repositoryId;
        result.repositoryName = request.repositoryName;
        result.state = request.state;
        result.addReadme = String.isBlank(request.repositoryId);

        return result;
    }

    private static Boolean hasLicense() {
        return LicenseHelper.actionIsLicenseEnabled('viewEditGitRepository');
    }

    // INNER

    public with sharing class Configuration {
        @AuraEnabled
        public String username { get; set; }
        @AuraEnabled
        public String headers { get; set; }
        @AuraEnabled
        public String authType { get; set; }
        @AuraEnabled
        public SSHKey sshKey { get; set; }
        @AuraEnabled
        public String repositoryName { get; set; }

        public Configuration(RepositoryOAuth.Configuration configuration) {
            this.authType = configuration.authType;
            this.headers = configuration.headers;
            this.repositoryName = configuration.repositoryName;
            this.sshKey = configuration.sshKey == null ? null : new SSHKey(configuration.sshKey);
            this.username = configuration.username;
        }
    }

    public with sharing class SSHKey {
        @AuraEnabled
        public String key { get; set; }
        @AuraEnabled
        public String attachmentId { get; set; }

        public SSHKey(RepositoryOAuth.SSHKey sshKey) {
            this.key = sshKey?.key;
            this.attachmentId = sshKey?.attachmentId;
        }
    }

    public with sharing class GitRepoRequest {
        @AuraEnabled
        public Id recordId { get; set; }
        @AuraEnabled
        public String repositoryId { get; set; }
        @AuraEnabled
        public String repositoryName { get; set; }
        @AuraEnabled
        public String state { get; set; }
    }
}