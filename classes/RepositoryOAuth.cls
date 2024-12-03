@SuppressWarnings('PMD.AvoidGlobalModifier')
global inherited sharing class RepositoryOAuth implements CopadoDomain {
    private static final String REPOSITORIES = 'Repositories';
    private static final String NAMED_CREDENTIAL = Settings.functionsNamedCredential;
    private static final String SSH_KEY_NAME = 'id_rsa.pub';
    private static final String HTTPS = 'HTTPS';
    private static final String SSH = 'SSH';
    private static final String EXTRA_HEADERS = 'Extra Headers';
    private static final Integer EXTRA_HEADER_LENGTH_LIMIT = 255;

    global static String getLoginUrl(LoginUrlRequest request) {
        HttpRequest httpRequest = new HttpRequest();
        httpRequest.setEndpoint(namedCredential() + '/api/v1/oauth/login');
        DeployAPI.setAuthHeaders(httpRequest);
        httpRequest.setHeader('Content-Type', 'application/json');
        httpRequest.setMethod('POST');
        httpRequest.setBody(JSON.serialize(request));

        HttpResponse response = new Http().send(httpRequest);

        if (response.getStatusCode() != 302) {
            throw new ApplicationException('Status: ' + response.getStatusCode() + ', Response: ' + response.getBody());
        }
        deleteRepoAttachment(request.repositoryId);

        return response.getHeader('Location');
    }

    global static void addSSHKey(AddSSHKeyRequest request) {
        HttpRequest httpRequest = new HttpRequest();

        DeployAPI.setAuthHeaders(httpRequest);
        String state = String.isNotBlank(request.state) ? EncodingUtil.urlEncode(request.state, 'UTF-8') : '';
        httpRequest.setEndpoint(namedCredential() + '/api/v1/oauth/sshkey?state=' + state);
        httpRequest.setMethod('POST');
        httpRequest.setHeader('Content-Type', 'application/json');
        httpRequest.setBody(JSON.serialize(request));
        HttpResponse response = new Http().send(httpRequest);

        if (response.getStatusCode() != 302 && response.getStatusCode() != 200) {
            throw new ApplicationException('Status: ' + response.getStatusCode() + ', Response: ' + response.getBody());
        }

        deleteRepoAttachment(request.recordId);
    }

    global static Boolean isAuthenticated(Id repositoryId) {
        DeployAPI.validateGitResult response = DeployAPI.validateGit(repositoryId);

        return response.success;
    }

    global static String createSSHKey(Id repositoryId) {
        try {
            String result = '';

            if (String.isNotBlank(repositoryId)) {
                result = DeployAPI.createSSHKeyForLWC(repositoryId);
            }

            return result;
        } catch (Exception ex) {
            throw new ApplicationException(ex.getMessage());
        }
    }

    global static String getSSHKey(Id repositoryId) {
        try {
            String result = '';

            if (String.isNotBlank(repositoryId)) {
                result = JSON.serialize(new SSHKey(repositoryId));
            }

            return result;
        } catch (Exception ex) {
            throw new ApplicationException(ex.getMessage());
        }
    }

    global static Configuration init(Id recordId) {
        try {
            List<Git_Repository__c> repositories = new GitRepositoriesSelector().byId(new Set<Id>{ recordId });

            return repositories.isEmpty() ? null : new Configuration(repositories[0]);
        } catch (Exception error) {
            throw new ApplicationException().auraHandled(error);
        }
    }

    global static void authenticate(RepositoryAuthenticationRequest request) {
        try {
            if (request.repositoryId == null) {
                throw new ApplicationException(String.format(Label.MissingRequiredParameters, new List<String>{ 'Repository Id' }));
            }
            Sensitive_Information__c configuration = configuration(request);

            String encryptedHeaders = DeployAPI.encryptAPIKey(request.extraHeaders);
            Boolean hasNotesDeleted = false;

            if (String.isNotBlank(encryptedHeaders)) {
                if (encryptedHeaders.length() > EXTRA_HEADER_LENGTH_LIMIT) {
                    List<Note> notes = notes(request.repositoryId);

                    Note note = notes.isEmpty() ? new Note(Title = EXTRA_HEADERS, ParentId = request.repositoryId) : notes[0];
                    note.Body = encryptedHeaders;

                    DML.safeUpsert(note, '');
                } else {
                    configuration.Extra_Header__c = encryptedHeaders;
                    hasNotesDeleted = true;
                }
            } else {
                hasNotesDeleted = true;
            }

            if (hasNotesDeleted) {
                DML.deleteAsSystem(notes(request.repositoryId), '');
            }

            DML.upsertAsSystem(configuration, '');
        } catch (Exception error) {
            throw new ApplicationException(error);
        }
    }

    global static String validateGitConnection(Id repositoryId) {
        try {
            String result = '';

            DeployAPI.validateGitResult response = DeployAPI.validateGit(repositoryId);

            if (response != null) {
                result = JSON.serialize(response);
            }

            return result;
        } catch (Exception ex) {
            throw new ApplicationException(ex.getMessage());
        }
    }

    // PRIVATE

    private static void deleteRepoAttachment(Id repositoryId) {
        List<Attachment> attachments = [
            SELECT Id, ParentId, Body, Name
            FROM Attachment
            WHERE ParentId = :repositoryId AND Name = :REPOSITORIES
            WITH USER_MODE
        ];
        DML.deleteAsSystem(attachments, '');
    }

    private static String namedCredential() {
        String result = NAMED_CREDENTIAL;

        if (result == Settings.DEFAULT_FUNCTIONS_NAMED_CREDENTIAL) {
            result = Settings.ns + result;
        }

        return 'callout:' + result;
    }

    private static List<Note> notes(Id parentId) {
        return [SELECT Title, Body FROM Note WHERE ParentId = :parentId AND Title = :EXTRA_HEADERS WITH USER_MODE];
    }

    private static Sensitive_Information__c configuration(RepositoryAuthenticationRequest request) {
        Sensitive_Information__c result = Sensitive_Information__c.getInstance(request.repositoryId);

        if (result == null) {
            result = new Sensitive_Information__c(Name = request.repositoryId);
        }

        if (request.authType == HTTPS) {
            result.Username__c = request.username;
            result.Password__c = DeployAPI.encryptAPIKey(request.password);
        }

        return result;
    }

    // INNER

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class LoginUrlRequest implements CopadoServiceRequest {
        global String provider;
        global Id repositoryId;
        global String redirectURI;

        global LoginUrlRequest(String provider, Id repositoryId, String redirectURI) {
            this.provider = provider;
            this.repositoryId = repositoryId;
            this.redirectURI = redirectURI;
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class AddSSHKeyRequest implements CopadoServiceRequest {
        global Id recordId;
        global String state;
        global Boolean addReadme;
        global String repositoryId;
        global String repositoryName;
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class SSHKey {
        global String key;
        global String attachmentId;

        global SSHKey(Id repositoryId) {
            List<Attachment> attachments = attachments(repositoryId);

            if (!attachments.isEmpty()) {
                this.key = attachments[0].Body?.toString();
                this.attachmentId = attachments[0].Id;
            }
        }

        // PRIVATE

        private List<Attachment> attachments(Id repositoryId) {
            return new AttachmentsSelector().byParentIdAndName(new Set<Id>{ repositoryId }, new Set<String>{ SSH_KEY_NAME });
        }
    }

    global inherited sharing class Configuration {
        global String username;
        global String headers;
        global String authType;
        global SSHKey sshKey;
        global String repositoryName;

        global Configuration(Git_Repository__c repository) {
            this.repositoryName = repository.Name;

            Sensitive_Information__c configuration = Sensitive_Information__c.getInstance(repository.Id);
            this.username = configuration?.Username__c;

            if (configuration != null && repository.URI__c?.startsWith('https')) {
                this.authType = HTTPS;
                this.headers = headers(repository, configuration);
            } else if (String.isNotBlank(repository.URI__c) && !repository.URI__c?.startsWith('https')) {
                this.authType = SSH;
                this.sshKey = new SSHKey(repository.Id);
            }
        }

        // PRIVATE

        private String headers(Git_Repository__c repository, Sensitive_Information__c configuration) {
            String result = '';

            if (String.isNotBlank(configuration.Extra_Header__c)) {
                result = configuration.Extra_Header__c;
            } else {
                List<Note> notes = notes(repository.Id);

                if (!notes.isEmpty()) {
                    result = notes[0].Body;
                }
            }

            return result;
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class RepositoryAuthenticationRequest {
        global String repositoryId;
        global String authType;
        global String username;
        global String password;
        global String extraHeaders;
    }
}