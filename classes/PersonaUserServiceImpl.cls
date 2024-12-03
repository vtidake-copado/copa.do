@SuppressWarnings('PMD.CyclomaticComplexity,PMD.CognitiveComplexity,PMD.AvoidDeeplyNestedIfStmts')
public with sharing class PersonaUserServiceImpl {
    private static final String SYSTEM_ADMINISTRATOR_PROFILE = 'System Administrator';
    private static final String PERMISSION_SET_LABEL = 'Copado Governance Org Credential Access PS';

    // PUBLIC

    public static void add1(Persona.AddUserRequest request) {
        validate(request);
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        addUsersToPublicGroup(request.userIds, config);
        assignPermissionSetGroupToUsers(request.userIds, config);
    }

    public static void add2(Persona.AddUserRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        addLicensesToUsers(request.personaId, request.userIds, config);
    }

    // NOTE: this is only to separate transactions
    public static void add3(Persona.AddUserRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        addPackageLicensesToUsers(request.personaId, config);
        updateUserWithPersonaId(request.userIds, request.personaId);
    }

    // NOTE: Create credential for user if there is no existing one
    public static void add4(Persona.AddUserRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        createCredential(request.personaId, request.userIds, config);
    }

    // NOTE: Authenticate credential for each user in the request
    public static void add5(Persona.AddUserRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        validateCredentials(request.personaId, request.userIds, config);
    }

    // NOTE: Create API key for each user in the request
    public static void add6(Persona.AddUserRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        createAPIKey(request.personaId, request.userIds, config);
    }

    public static void remove1(Persona.RemoveUserRequest request) {
        validate(request);
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        removeLicensesFromUsers(request.userIds, config);
    }

    public static void remove2(Persona.RemoveUserRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        removePackageLicensesFromUsers(request.userIds, config);
    }

    // NOTE: this is only to separate transactions
    public static void remove3(Persona.RemoveUserRequest request) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(request.personaId);
        removePermissionSetGroupFromUsers(request.userIds, config);
        removeUsersFromPublicGroup(request.userIds, config);
        updateUserWithoutPersonaId(request.userIds);
    }

    // PRIVATE

    private static void validate(Persona.AddUserRequest request) {
        for (User user : [SELECT Id, IsActive, Persona_Id__c FROM User WHERE Id IN :request.userIds WITH USER_MODE]) {
            if (!user.IsActive || String.isNotBlank(user.Persona_Id__c)) {
                throw new ApplicationException(Label.Add_Users_to_Persona_Subtitle);
            }
        }
    }

    private static void addUsersToPublicGroup(List<Id> userIds, PersonaDefinitionConfig config) {
        List<GroupMember> groupMembers = new List<GroupMember>();
        for (Id userId : userIds) {
            groupMembers.add(new GroupMember(GroupId = config.publicGroupId, UserOrGroupId = userId));
        }
        DML.safeInsert(
            groupMembers,
            String.format(
                Label.ErrorWhileInserting,
                new List<String>{
                    GroupMember.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaUserServiceImpl.addUsersToPublicGroup'
                }
            )
        );
    }

    private static void addLicensesToUsers(Id personaId, List<Id> userIds, PersonaDefinitionConfig config) {
        if (config.licenses.isEmpty()) {
            return;
        }

        List<String> licenses = new List<String>();
        for (PersonaDefinitionConfig.ConfigEntry entry : config.licenses) {
            licenses.add(entry.name);
        }

        AddLicenseServiceImpl.userIds = userIds;
        Persona.AddLicenseRequest licenseRequest = new Persona.AddLicenseRequest();
        licenseRequest.personaId = personaId;
        licenseRequest.licenses = licenses;
        Persona.LicenseService.addCopadoLicense1(licenseRequest);
    }

    private static void addPackageLicensesToUsers(Id personaId, PersonaDefinitionConfig config) {
        if (config.packageLicenses.isEmpty()) {
            return;
        }

        List<String> licenses = new List<String>();
        for (PersonaDefinitionConfig.ConfigEntry entry : config.packageLicenses) {
            licenses.add(entry.name);
        }

        Persona.AddLicenseRequest licenseRequest = new Persona.AddLicenseRequest();
        licenseRequest.personaId = personaId;
        licenseRequest.licenses = licenses;
        Persona.LicenseService.addPackageLicense1(licenseRequest);
    }

    private static void assignPermissionSetGroupToUsers(List<Id> userIds, PersonaDefinitionConfig config) {
        List<String> permissionSetGroupNames = new List<String>();
        for (PersonaDefinitionConfig.ConfigEntry entry : config.permissionSetGroups) {
            permissionSetGroupNames.add(entry.name);
        }
        AddPermissionServiceImpl.addPermissions(permissionSetGroupNames, userIds);
    }

    private static void updateUserWithPersonaId(List<Id> userIds, Id personaId) {
        List<User> users = new List<User>();
        for (Id userId : userIds) {
            users.add(new User(Id = userId, Persona_Id__c = personaId));
        }
        DML.safeUpdate(
            users,
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{
                    User.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaUserServiceImpl.updateUserWithPersonaId'
                }
            )
        );
    }

    private static void createCredential(Id personaId, List<Id> userIds, PersonaDefinitionConfig config) {
        if (isJWTenabled()) {
            Map<String, User> usersByName = new Map<String, User>();
            Map<String, User> usersBySfdcOrgId = new Map<String, User>();
            for (User user : [SELECT Id, FirstName, LastName FROM User WHERE Id IN :userIds WITH USER_MODE]) {
                usersByName.put(credentialName(user), user);
                usersBySfdcOrgId.put(sfdcOrgId(user), user);
            }

            // Existing credentials
            Map<Id, Org__c> credentialByUserId = credentialByUserId(usersByName, usersBySfdcOrgId);

            Map<Id, Org__c> credentials = new Map<Id, Org__c>();
            for (User user : usersByName.values()) {
                if (!credentialByUserId.containsKey(user.Id)) {
                    credentials.put(user.Id, new Org__c(Name = credentialName(user), OwnerId = user.Id));
                }
            }

            DML.safeInsert(
                credentials.values(),
                String.format(
                    Label.ErrorWhileInserting,
                    new List<String>{
                        User.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                        'PersonaUserServiceImpl.createCredential'
                    }
                )
            );
        }
    }

    private static void validateCredentials(Id personaId, List<Id> userIds, PersonaDefinitionConfig config) {
        if (isJWTenabled()) {
            Map<String, User> usersByName = new Map<String, User>();
            Map<String, User> usersBySfdcOrgId = new Map<String, User>();
            for (User user : [SELECT Id, FirstName, LastName, Username FROM User WHERE Id IN :userIds WITH USER_MODE]) {
                usersByName.put(credentialName(user), user);
                usersBySfdcOrgId.put(sfdcOrgId(user), user);
            }

            Map<Id, Org__c> credentialByUserId = credentialByUserId(usersByName, usersBySfdcOrgId);

            List<Org__c> credentials = new List<Org__c>();
            for (User user : usersByName.values()) {
                if (credentialByUserId.containsKey(user.Id)) {
                    Integer statusCode = DeployAPI.validateOrg(UserInfo.getOrganizationId(), user, credentialByUserId.get(user.Id).Id);
                    if (statusCode == 200 || statusCode == 201) {
                        credentials.add(new Org__c(Id = credentialByUserId.get(user.Id).Id, Validated_Date__c = System.today()));
                    } else {
                        throw new ApplicationException(String.format(Label.Credential_Validation_Error, new List<String>{ user.Username }));
                    }
                }
            }

            // Update Credential Validated Date
            DML.safeUpdate(
                credentials,
                String.format(
                    Label.ErrorWhileUpdating,
                    new List<String>{
                        User.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                        'PersonaUserServiceImpl.validateCredentials'
                    }
                )
            );
        }
    }

    private static void createAPIKey(Id personaId, List<Id> userIds, PersonaDefinitionConfig config) {
        if (isJWTenabled()) {
            for (Id userId : userIds) {
                DeployAPI.createAPIKey(userId);
            }
        }
    }

    private static Boolean isJWTenabled() {
        String permissionSetName = PERMISSION_SET_LABEL.replaceAll('[^a-zA-Z0-9]+', '_');

        List<SetupEntityAccess> setupEntitiesAccess = [
            SELECT Id, ParentId, SetupEntityId
            FROM SetupEntityAccess
            WHERE
                ParentId IN (SELECT Id FROM PermissionSet WHERE Name = :permissionSetName)
                AND SetupEntityId IN (SELECT Id FROM ConnectedApplication WHERE Name LIKE 'Copado DevOps%')
            WITH USER_MODE
        ];

        return Test.isRunningTest() ? true : !setupEntitiesAccess.isEmpty();
    }

    private static String credentialName(User user) {
        return user.FirstName + ' ' + user.LastName.substring(0, 1) + ' ' + Label.Credential_Name_Suffix;
    }

    private static String sfdcOrgId(User user) {
        return UserInfo.getOrganizationId() + '_' + user.Id;
    }

    private static Map<Id, Org__c> credentialByUserId(Map<String, User> usersByName, Map<String, User> usersBySfdcOrgId) {
        Map<Id, Org__c> result = new Map<Id, Org__c>();

        // New credentials which are not validated yet
        for (Org__c org : [SELECT Id, Name FROM Org__c WHERE Name IN :usersByName.keyset() AND SFDC_Org_ID__c = NULL WITH USER_MODE]) {
            result.put(usersByName.get(org.Name).Id, org);
        }

        // Existing invalid credentials
        for (Org__c org : [
            SELECT Id, SFDC_Org_ID__c
            FROM Org__c
            WHERE SFDC_Org_ID__c != NULL AND SFDC_Org_ID__c IN :usersBySfdcOrgId.keyset()
            WITH USER_MODE
        ]) {
            result.put(usersBySfdcOrgId.get(org.SFDC_Org_ID__c).Id, org);
        }

        return result;
    }

    private static void validate(Persona.RemoveUserRequest request) {
        for (User user : [SELECT Id, Profile.Name FROM User WHERE Id IN :request.userIds WITH USER_MODE]) {
            if (request.userIds.contains(UserInfo.getUserId()) && user.Profile.Name == SYSTEM_ADMINISTRATOR_PROFILE) {
                throw new ApplicationException(Label.Remove_Admin_User_Error);
            }
        }
    }

    private static void removeUsersFromPublicGroup(List<Id> userIds, PersonaDefinitionConfig config) {
        List<GroupMember> groupMembers = [
            SELECT Id
            FROM GroupMember
            WHERE GroupId = :config.publicGroupId AND UserOrGroupId IN :userIds
            WITH USER_MODE
        ];
        DML.safeDelete(
            groupMembers,
            String.format(
                Label.ErrorWhileDeleting,
                new List<String>{
                    GroupMember.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaUserServiceImpl.removeUsersFromPublicGroup'
                }
            )
        );
    }

    private static void removePermissionSetGroupFromUsers(List<Id> userIds, PersonaDefinitionConfig config) {
        List<String> permissionSetGroupNames = new List<String>();
        for (PersonaDefinitionConfig.ConfigEntry entry : config.permissionSetGroups) {
            permissionSetGroupNames.add(entry.name);
        }
        RemovePermissionServiceImpl.removePermissionSetGroups(permissionSetGroupNames, userIds);
    }

    private static void removePackageLicensesFromUsers(List<Id> userIds, PersonaDefinitionConfig config) {
        if (config.packageLicenses.isEmpty()) {
            return;
        }

        List<String> licenses = new List<String>();
        for (PersonaDefinitionConfig.ConfigEntry entry : config.packageLicenses) {
            licenses.add(entry.name);
        }
        RemoveLicenseServiceImpl.removePackageLicenses(licenses, userIds);
    }

    private static void removeLicensesFromUsers(List<Id> userIds, PersonaDefinitionConfig config) {
        if (config.licenses.isEmpty()) {
            return;
        }

        List<String> licenses = new List<String>();
        for (PersonaDefinitionConfig.ConfigEntry entry : config.licenses) {
            licenses.add(entry.name);
        }

        RemoveLicenseServiceImpl.removeCopadoLicenses(licenses, userIds);
    }

    private static void updateUserWithoutPersonaId(List<Id> userIds) {
        List<User> users = new List<User>();
        for (Id userId : userIds) {
            users.add(new User(Id = userId, Persona_Id__c = null));
        }
        DML.safeUpdate(
            users,
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{
                    User.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaUserServiceImpl.updateUserWithoutPersonaId'
                }
            )
        );
    }
}