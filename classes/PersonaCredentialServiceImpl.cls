public inherited sharing class PersonaCredentialServiceImpl {
    // PUBLIC

    public static void share(Persona.ShareCredentialRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        shareCredentials(request.credentialIds, request.accessLevel, config);
        updatePersonaDefinition(request.credentialIds, request.personaId, config);
    }

    public static void remove(Persona.RemoveCredentialRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        removeCredentials(request.credentialIds, config.publicGroupId);
        Set<Id> credentialsToRetain = new Set<Id>(config.credentialIds);
        credentialsToRetain.removeAll(request.credentialIds);
        updatePersonaDefinition(new List<Id>(credentialsToRetain), request.personaId, config);
    }

    public static void updateAccessLevel(Persona.UpdateAccessLevelRequest request) {
        PersonaDefinitionConfig personaDefinition = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        updateCredentialsAccessLevel(request.credentialIds, personaDefinition, request.accessLevel);
    }

    // NOTE: helper method for Apex Sharing Batch class
    public static Org__Share shareWithReason(Id credential, String accessLevel, Persona_Definition__c personaDefinition) {
        PersonaDefinitionConfig config = (PersonaDefinitionConfig) JSON.deserialize(personaDefinition.Config_Json__c, PersonaDefinitionConfig.class);
        return shareWithReason(credential, accessLevel, config);
    }

    // PRIVATE

    private static Org__Share shareWithReason(Id credential, String accessLevel, PersonaDefinitionConfig config) {
        String publicGroup = config.publicGroupId;
        accessLevel = String.isNotBlank(accessLevel) ? accessLevel : config.defaultCredentialAccessLevel;
        return new Org__Share(
            RowCause = Schema.Org__Share.RowCause.Copado_Persona__c,
            ParentId = credential,
            UserOrGroupId = publicGroup,
            AccessLevel = String.isNotBlank(accessLevel) ? accessLevel : 'Read'
        );
    }

    private static void shareCredentials(List<Id> credentials, String accessLevel, PersonaDefinitionConfig config) {
        List<Org__Share> credentialShares = shareWithReason(credentials, accessLevel, config);
        DML.insertAsSystem(
            credentialShares,
            String.format(
                Label.ErrorWhileInserting,
                new List<String>{
                    Org__Share.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaCredentialServiceImpl.share'
                }
            )
        );
    }

    private static List<Org__Share> shareWithReason(List<Id> credentials, String accessLevel, PersonaDefinitionConfig config) {
        List<Org__Share> credentialShares = new List<Org__Share>();
        for (String credential : credentials) {
            credentialShares.add(shareWithReason(credential, accessLevel, config));
        }
        return credentialShares;
    }

    private static void updatePersonaDefinition(List<Id> credentials, Id personaId, PersonaDefinitionConfig config) {
        config.credentialIds = credentials;
        PersonaServiceHelper.updatePersonaConfig(personaId, config);
    }

    private static void removeCredentials(List<Id> credentials, String publicGroup) {
        List<Org__Share> orgShares = [
            SELECT Id
            FROM Org__Share
            WHERE ParentId IN :credentials AND UserOrGroupId = :publicGroup AND RowCause = :Schema.Org__Share.RowCause.Copado_Persona__c
            WITH SYSTEM_MODE
        ];
        DML.deleteAsSystem(
            orgShares,
            String.format(
                Label.ErrorWhileDeleting,
                new List<String>{
                    Org__Share.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaCredentialServiceImpl.removeCredentials'
                }
            )
        );
    }

    private static void updateCredentialsAccessLevel(List<Id> credentialIds, PersonaDefinitionConfig config, String accessLevel) {
        String publicGroup = config.publicGroupId;
        List<Org__Share> orgShareToUpdate = new List<Org__Share>();
        for (Org__Share orgShare : [
            SELECT Id, AccessLevel
            FROM Org__Share
            WHERE ParentId IN :credentialIds AND UserOrGroupId = :publicGroup AND RowCause = :Schema.Org__Share.RowCause.Copado_Persona__c
            WITH SYSTEM_MODE
        ]) {
            orgShare.AccessLevel = accessLevel;
            orgShareToUpdate.add(orgShare);
        }
        DML.updateAsSystem(
            orgShareToUpdate,
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{
                    Org__Share.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaCredentialServiceImpl.updateAccessLevel'
                }
            )
        );
    }
}