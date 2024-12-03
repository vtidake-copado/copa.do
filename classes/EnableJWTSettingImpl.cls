@SuppressWarnings('PMD.CyclomaticComplexity')
public with sharing class EnableJWTSettingImpl {
    private static final String PERMISSION_SET_GROUP_LABEL = 'Copado Governance Org Credential Access';
    private static final String PERMISSION_SET_LABEL = 'Copado Governance Org Credential Access PS';

    public static Feature.JWTSettingStatusResult createPermissions() {
        PermissionSet permissionSet = createPermissionSet();
        PermissionSetGroup permissionSetGroup = createPermissionSetGroup();
        assignPermissionSetToPermissionSetGroup(permissionSetGroup.Id, permissionSet.Id);
        Feature.JWTSettingStatusResult result = new Feature.JWTSettingStatusResult();
        result.permissionSetGroupId = permissionSetGroup.Id;
        result.permissionSetId = permissionSet.Id;
        return result;
    }

    public static Feature.JWTSettingStatusResult assignPermissionToConnectedApp(Feature.JWTSettingStatusRequest request) {
        Id connectedAppId = connectedAppId();
        if (request.permissionSetId != null && connectedAppId != null) {
            assignPermissionSetToConnectedApp(request.permissionSetId, connectedAppId);
        }
        return serviceResult(request);
    }

    public static Feature.JWTSettingStatusResult assignPermissionToPersonas1(Feature.JWTSettingStatusRequest request) {
        if (request.permissionSetGroupId != null) {
            assignPSGToPersonas();
        }
        return serviceResult(request);
    }

    public static Feature.JWTSettingStatusResult assignPermissionToPersonas2(Feature.JWTSettingStatusRequest request) {
        if (request.permissionSetGroupId != null) {
            assignPSGToPersonas2();
        }
        return serviceResult(request);
    }

    public static Feature.JWTSettingStatusResult assignPermissionToExistingUsers(Feature.JWTSettingStatusRequest request) {
        Feature.JWTSettingStatusResult result = serviceResult(request);
        if (request.permissionSetGroupId != null) {
            List<Id> userIds = assignPSGToCopadoUsers(request.permissionSetGroupId);
            result.userIds = userIds;
        }
        return result;
    }

    public static Feature.JWTSettingStatusResult execute(Feature.JWTSettingStatusRequest request) {
        Feature.JWTSettingStatusResult result = serviceResult(request);
        result.status = enableJWT();
        return result;
    }

    // PRIVATE

    private static PermissionSet createPermissionSet() {
        String permissionSetName = PERMISSION_SET_LABEL.replaceAll('[^a-zA-Z0-9]+', '_');
        List<PermissionSet> permissionSets = [SELECT Id, Name FROM PermissionSet WHERE Name = :permissionSetName WITH USER_MODE];
        if (!permissionSets.isEmpty()) {
            return permissionSets[0];
        }

        PermissionSet permissionSet = new PermissionSet(
            Label = PERMISSION_SET_LABEL,
            Name = permissionSetName,
            Description = Label.Copado_Automate_Governance_Org_Credential_Permission_Set_Description
        );
        DML.safeInsert(
            permissionSet,
            String.format(Label.ErrorWhileInserting, new List<String>{ 'PermissionSet', 'EnableJWTSettingImpl.createPermissionSet' })
        );
        return permissionSet;
    }

    private static PermissionSetGroup createPermissionSetGroup() {
        String permissionSetGroupName = PERMISSION_SET_GROUP_LABEL.replaceAll('[^a-zA-Z0-9]+', '_');
        List<PermissionSetGroup> permissionSetGroups = [
            SELECT Id, DeveloperName
            FROM PermissionSetGroup
            WHERE DeveloperName = :permissionSetGroupName
            WITH USER_MODE
        ];
        if (!permissionSetGroups.isEmpty()) {
            return permissionSetGroups[0];
        }

        PermissionSetGroup permissionSetGroup = new PermissionSetGroup(
            DeveloperName = permissionSetGroupName,
            MasterLabel = PERMISSION_SET_GROUP_LABEL,
            Description = Label.Copado_Automate_Governance_Org_Credential_Permission_Set_Group_Description
        );
        DML.safeInsert(
            permissionSetGroup,
            String.format(Label.ErrorWhileInserting, new List<String>{ 'PermissionSetGroup', 'EnableJWTSettingImpl.createPermissionSetGroup' })
        );
        return permissionSetGroup;
    }

    private static void assignPermissionSetToPermissionSetGroup(Id permissionSetGroupId, Id permissionSetId) {
        List<PermissionSetGroupComponent> components = [
            SELECT Id
            FROM PermissionSetGroupComponent
            WHERE PermissionSetGroupId = :permissionSetGroupId AND PermissionSetId = :permissionSetId
            WITH USER_MODE
        ];

        if (components.isEmpty()) {
            PermissionSetGroupComponent component = new PermissionSetGroupComponent(
                PermissionSetGroupId = permissionSetGroupId,
                PermissionSetId = permissionSetId
            );
            DML.safeInsert(
                component,
                String.format(
                    Label.ErrorWhileInserting,
                    new List<String>{
                        PermissionSetGroupComponent.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                        'EnableJWTSettingImpl.assignPermissionSets'
                    }
                )
            );
        }
    }

    private static Id connectedAppId() {
        Id result;
        List<ConnectedApplication> connectedApps = [
            SELECT Id, Name, OptionsAllowAdminApprovedUsersOnly
            FROM ConnectedApplication
            WHERE Name LIKE 'Copado DevOps%'
            WITH USER_MODE
        ];

        if (connectedApps.isEmpty()) {
            return null;
        }
        result = connectedApps[0].Id;
        return result;
    }

    private static void assignPermissionSetToConnectedApp(Id permissionSetId, Id connectedAppId) {
        List<SetupEntityAccess> accesses = [
            SELECT Id
            FROM SetupEntityAccess
            WHERE ParentId = :permissionSetId AND SetupEntityId = :connectedAppId
            WITH USER_MODE
        ];

        if (accesses.isEmpty()) {
            SetupEntityAccess entityAccess = new SetupEntityAccess(ParentId = permissionSetId, SetupEntityId = connectedAppId);

            DML.safeInsert(
                entityAccess,
                String.format(
                    Label.ErrorWhileInserting,
                    new List<String>{
                        SetupEntityAccess.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                        'EnableJWTSettingImpl.assignPermissionSetToConnectedApp'
                    }
                )
            );
        }
    }

    private static void assignPSGToPersonas() {
        String permissionSetGroupName = PERMISSION_SET_GROUP_LABEL.replaceAll('[^a-zA-Z0-9]+', '_');
        Persona.AddPermissionRequest request;
        for (Persona_Definition__c personaDefinition : [SELECT Id FROM Persona_Definition__c WITH SYSTEM_MODE]) {
            request = new Persona.AddPermissionRequest();
            request.personaId = personaDefinition.Id;
            request.permissionSetGroups = new List<String>{ permissionSetGroupName };
            Persona.PermissionService.add1(request);
        }
    }

    private static void assignPSGToPersonas2() {
        String permissionSetGroupName = PERMISSION_SET_GROUP_LABEL.replaceAll('[^a-zA-Z0-9]+', '_');
        Persona.AddPermissionRequest request;
        for (Persona_Definition__c personaDefinition : [SELECT Id FROM Persona_Definition__c WITH SYSTEM_MODE]) {
            request = new Persona.AddPermissionRequest();
            request.personaId = personaDefinition.Id;
            request.permissionSetGroups = new List<String>{ permissionSetGroupName };
            Persona.PermissionService.add2(request);
        }
    }

    @SuppressWarnings('PMD.ApexCRUDViolation')
    private static List<Id> assignPSGToCopadoUsers(Id permissionSetGroupId) {
        List<Id> userIds = new List<Id>();
        List<PermissionSetAssignment> permissionSetAssignments = new List<PermissionSetAssignment>();

        for (Copado_License__c setting : [SELECT SetupOwnerId FROM Copado_License__c WITH SYSTEM_MODE]) {
            userIds.add(setting.SetupOwnerId);
        }

        Map<String, PermissionSetAssignment> permissionSetAssignmentByUser = getPermissionSetAssignments(permissionSetGroupId, userIds);

        for (User user : [SELECT Id, Username FROM User WHERE Id IN :userIds AND Persona_Id__c = NULL AND IsActive = TRUE WITH USER_MODE]) {
            if (!permissionSetAssignmentByUser.containsKey(user.Id)) {
                permissionSetAssignments.add(new PermissionSetAssignment(PermissionSetGroupId = permissionSetGroupId, AssigneeId = user.Id));
            }
        }

        if (!permissionSetAssignments.isEmpty()) {
            insert permissionSetAssignments;
        }

        return userIds;
    }

    private static Map<String, PermissionSetAssignment> getPermissionSetAssignments(Id permissionSetGroupId, List<Id> userIds) {
        Map<String, PermissionSetAssignment> permissionSetAssignmentByUser = new Map<String, PermissionSetAssignment>();

        // PMD False positive, as WITH USER_MODE is not supported yet
        for (PermissionSetAssignment permissionSetAssignment : [
            SELECT Id, PermissionSetGroupId, PermissionSetGroup.DeveloperName, AssigneeId
            FROM PermissionSetAssignment
            WHERE PermissionSetGroupId = :permissionSetGroupId AND AssigneeId IN :userIds
            WITH SYSTEM_MODE
        ]) {
            permissionSetAssignmentByUser.put(permissionSetAssignment.AssigneeId, permissionSetAssignment);
        }

        return permissionSetAssignmentByUser;
    }

    private static Boolean enableJWT() {
        List<User> users = [SELECT Id, username FROM User WHERE Id = :UserInfo.getUserId() WITH USER_MODE LIMIT 1];
        if (users.isEmpty()) {
            return false;
        }

        Integer statusCode = DeployAPI.enableJwt(UserInfo.getOrganizationId(), users[0]);
        if (statusCode != 200 && statusCode != 201) {
            return false;
        }
        return true;
    }

    private static Feature.JWTSettingStatusResult serviceResult(Feature.JWTSettingStatusRequest request) {
        Feature.JWTSettingStatusResult result = new Feature.JWTSettingStatusResult();
        result.permissionSetGroupId = request.permissionSetGroupId;
        result.permissionSetId = request.permissionSetId;
        result.userIds = request.userIds;
        return result;
    }
}