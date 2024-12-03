@SuppressWarnings('PMD.CognitiveComplexity,PMD.CyclomaticComplexity')
public with sharing class JwtController {
    private static final String BLANK = '';
    private static final String IS_INSTALLED = 'isInstalled';
    private static final String HAS_POLICIES = 'hasPolicies';
    private static final String HAS_PERMISSION_SETS = 'hasPermissionSets';
    private static final String PERMISSION_SET_STATUS_UPDATED = 'Updated';
    private static final String PERMISSION_SET_GROUP_NAME = 'Copado_Governance_Org_Credential_Access';

    private Feature.JWTSettingStatusResult result;
    private Integer nextStep { get; set; }

    public Boolean standardPersonasCreated { get; set; }
    public List<Card> cardsList { get; set; }
    public String selectedCardId { get; set; }

    public Boolean showError { get; set; }
    public String errorMessage { get; set; }

    public Boolean isPolling { get; set; }
    public Boolean jwtDisableStepCompleted { get; set; }

    public Boolean recalculatingPermissions { get; set; }
    public Boolean disableAddPermissionsButton { get; set; }

    @TestVisible
    public Boolean isJwtEnabled { get; set; }
    @TestVisible
    private ConnectedAppStatus connectedAppStatus { get; set; }

    // CONSTRUCTOR
    public JwtController() {
        cardsList = new List<Card>();
        isPolling = false;
        isJwtEnabled = false;
        nextStep = 0;

        jwtDisableStepCompleted = false;
        recalculatingPermissions = false;
        disableAddPermissionsButton = false;

        errorMessage = BLANK;
        showError = false;

        // Check if Standard Personas are created
        validate();
        if (standardPersonasCreated) {
            latestConnectedAppStatus();
            if (!Test.isRunningTest()) {
                isJwtEnabled = connectedAppStatus.isInstalled && connectedAppStatus.hasPolicies && connectedAppStatus.isEnabled;
            }
            initializeSteps();
        }
    }

    // ACTIONS

    public PageReference markAsCompleted() {
        if (!Test.isRunningTest()) {
            latestConnectedAppStatus();
        }

        switch on selectedCardId {
            when 'isInstalled' {
                cardsList[0].buttonLabel = connectedAppStatus.isInstalled ? Label.Completed : Label.ERROR;
                cardsList[1].buttonLabel = cardsList[0].buttonLabel == Label.Completed ? Label.Add_Permissions_Now : BLANK;
            }
            when 'hasPermissionSets' {
                cardsList[1].buttonLabel = connectedAppStatus.hasPermissionSets ? Label.Completed : Label.ERROR;
            }
            when 'hasPolicies' {
                markAsCompletedForPoliciesStep();
            }
        }
        return null;
    }

    public PageReference addPermissions() {
        resetError();
        try {
            // To disable Add Permissions Button
            disableAddPermissionsButton = true;

            // Run Enable JWT 1st step
            result = Feature.JWTSetting.createPermissions();
            connectedAppStatus.hasPermissionSets = result.permissionSetGroupId != null ? true : connectedAppStatus.hasPermissionSets;
            recalculatingPermissions = result.permissionSetGroupId != null ? psgStatus() : recalculatingPermissions;

            // If PermissionSetGroup status is created then nextStep will start through polling
            nextStep = connectedAppStatus.hasPermissionSets ? 2 : 0;
            isPolling = true;
        } catch (Exception ex) {
            showError = true;
            errorMessage = ex.getMessage();
        }
        return null;
    }

    public PageReference checkAddPermissionStepsStatus() {
        resetError();
        if (!Test.isRunningTest()) {
            latestConnectedAppStatus();
        }

        try {
            handleEnableJWTStepsStatus();
        } catch (Exception ex) {
            removePermissionSetFromConnectedApp();
            showError = true;
            errorMessage = ex.getMessage();
            reset();
        }
        return null;
    }

    public PageReference init() {
        if (standardPersonasCreated) {
            initializeSteps();
        }
        return null;
    }

    public PageReference disablePolling() {
        reset();
        return null;
    }

    public PageReference disableJwt() {
        try {
            // Disable JWT by calling backend
            Integer statusCode = DeployAPI.disableJwt();
            if (statusCode != 200 && statusCode != 201) {
                throw new ApplicationException(Label.Disable_JWT_Process_Error);
            }

            // Remove Governance PS from Connected App
            removePermissionSetFromConnectedApp();
            isJwtEnabled = false;
        } catch (Exception ex) {
            showError = true;
            errorMessage = ex.getMessage();
        }
        return null;
    }

    public PageReference getPersonaManagementReference() {
        PageReference redirectPage = new Pagereference('/lightning/n/' + Settings.ns + 'Persona_Management');
        redirectPage.setRedirect(true);
        return redirectPage;
    }

    // PRIVATE

    private void validate() {
        standardPersonasCreated = [SELECT COUNT() FROM Persona_Definition__c WHERE Is_Standard__c = TRUE WITH SYSTEM_MODE] > 0;
    }

    @TestVisible
    private void initializeSteps() {
        cardsList.clear();
        if (isJwtEnabled) {
            asDisableJwtStep();
        } else {
            asEnableJwtSteps();
        }
    }

    private void asDisableJwtStep() {
        Card card = new Card();
        card.id = HAS_POLICIES;
        card.badgeLabel = '1';
        card.title = Label.EditConnectedAppPoliciesDisable;
        card.description = Label.StepInstruction;
        card.linkUrl = Label.ConnectedAppHomeSetupLink;
        card.imageurl = 'Disable.png';
        card.buttonLabel = Label.MarkAsCompleted;
        cardsList.add(card);
    }

    private void asEnableJwtSteps() {
        Card card = new Card();
        card.id = IS_INSTALLED;
        card.badgeLabel = '1';
        card.title = Label.InstallConnectedApp;
        card.description = Label.StepInstruction;
        card.linkUrl = Label.ConnectedAppHomeSetupLink;
        card.imageurl = 'Install.png';
        card.buttonLabel = connectedAppStatus.isInstalled ? Label.Completed : Label.MarkAsCompleted;
        cardsList.add(card);

        card = new Card();
        card.id = HAS_PERMISSION_SETS;
        card.badgeLabel = '2';
        card.title = Label.AssignPermissionsToConnectedApp;
        card.description = BLANK;
        card.linkUrl = BLANK;
        card.imageurl = BLANK;
        card.buttonLabel = Label.Add_Permissions_Now;
        cardsList.add(card);

        card = new Card();
        card.id = HAS_POLICIES;
        card.badgeLabel = '3';
        card.title = Label.EditConnectedAppPolicies;
        card.description = Label.Edit_Connected_App_Policy_Description;
        card.linkUrl = Label.ConnectedAppHomeSetupLink;
        card.imageurl = 'Edit.png';
        card.buttonLabel = BLANK;
        cardsList.add(card);
    }

    private void latestConnectedAppStatus() {
        recalculatingPermissions = result?.permissionSetGroupId != null ? psgStatus() : recalculatingPermissions;
        if (nextStep == 0) {
            connectedAppStatus = getConnectedAppStatus();
        }
    }

    private void handleEnableJWTStepsStatus() {
        if (connectedAppStatus.hasPermissionSets && disableAddPermissionsButton && !recalculatingPermissions) {
            runAddPermissionsNextStep();
        }
    }

    private Boolean psgStatus() {
        return [
                SELECT COUNT()
                FROM PermissionSetGroup
                WHERE DeveloperName = :PERMISSION_SET_GROUP_NAME AND Status != :PERMISSION_SET_STATUS_UPDATED
            ] > 0;
    }

    private void runAddPermissionsNextStep() {
        if (nextStep == 2) {
            result = Feature.JWTSetting.assignPermissionToConnectedApp(serviceRequest());
            nextStep++;
        } else if (nextStep == 3) {
            result = Feature.JWTSetting.assignPermissionToPersonas1(serviceRequest());
            nextStep++;
        } else if (nextStep == 4) {
            result = Feature.JWTSetting.assignPermissionToPersonas2(serviceRequest());
            nextStep++;
        } else if (nextStep == 5) {
            result = Feature.JWTSetting.assignPermissionToExistingUsers(serviceRequest());
            nextStep++;
        } else if (nextStep == 6) {
            result = Feature.JWTSetting.execute(serviceRequest());
            cardsList[1].buttonLabel = result.status ? Label.Completed : Label.ERROR;
            if (!result.status) {
                throw new ApplicationException(Label.Enable_JWT_Process_Error);
            } else {
                cardsList[2].buttonLabel = Label.MarkAsCompleted;
                reset();
            }
        }
    }

    private Feature.JWTSettingStatusRequest serviceRequest() {
        Feature.JWTSettingStatusRequest request = new Feature.JWTSettingStatusRequest();
        request.permissionSetGroupId = result.permissionSetGroupId;
        request.permissionSetId = result.permissionSetId;
        request.userIds = result.userIds;
        return request;
    }

    private void reset() {
        isPolling = false;
        disableAddPermissionsButton = false;
        nextStep = 0;
    }

    private void resetError() {
        showError = false;
        errorMessage = BLANK;
    }

    private void markAsCompletedForPoliciesStep() {
        if (!isJwtEnabled) {
            cardsList[2].buttonLabel = connectedAppStatus.hasPolicies ? Label.Completed : Label.ERROR;
            connectedAppStatus.isEnabled = connectedAppStatus.hasPolicies;
            isJwtEnabled = connectedAppStatus.isEnabled;
        } else {
            cardsList[0].buttonLabel = !connectedAppStatus.hasPolicies ? Label.Completed : Label.ERROR;
            jwtDisableStepCompleted = !connectedAppStatus.hasPolicies;
        }
    }

    private void removePermissionSetFromConnectedApp() {
        String psName = PERMISSION_SET_GROUP_NAME + '_PS';
        List<SetupEntityAccess> setupEntitiesAccess = [
            SELECT Id, ParentId, SetupEntityId
            FROM SetupEntityAccess
            WHERE ParentId IN (SELECT Id FROM PermissionSet WHERE Name = :psName) AND SetupEntityId = :connectedAppStatus.connectedAppId
            WITH USER_MODE
        ];

        if (!setupEntitiesAccess.isEmpty()) {
            SetupEntityAccess entityAccess = new SetupEntityAccess(Id = setupEntitiesAccess[0].Id);
            DML.safeDelete(
                entityAccess,
                String.format(
                    Label.ErrorWhileDeleting,
                    new List<String>{
                        SetupEntityAccess.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                        'JWTController.removePermissionSetFromConnectedApp'
                    }
                )
            );
        }
    }

    private ConnectedAppStatus getConnectedAppStatus() {
        ConnectedAppStatus result = new ConnectedAppStatus(false, false, false);

        try {
            List<ConnectedApplication> connectedApps = [
                SELECT Id, Name, OptionsAllowAdminApprovedUsersOnly
                FROM ConnectedApplication
                WHERE Name LIKE 'Copado DevOps%'
                WITH USER_MODE
            ];
            if (connectedApps.isEmpty()) {
                return result;
            }
            result.isInstalled = true;
            result.connectedAppId = connectedApps[0].Id;
            checkPermissionSetGroup(connectedApps[0].Id, result);
            result.hasPolicies = connectedApps[0].OptionsAllowAdminApprovedUsersOnly;
        } catch (Exception ex) {
            showError = true;
            errorMessage = ex.getMessage();
        }

        return result;
    }

    private void checkPermissionSetGroup(Id connectedAppId, ConnectedAppStatus result) {
        List<PermissionSetGroup> groups = [SELECT Id, Status FROM PermissionSetGroup WHERE DeveloperName = :PERMISSION_SET_GROUP_NAME WITH USER_MODE];
        if (!groups.isEmpty()) {
            result.hasPermissionSets = groups[0].Status == PERMISSION_SET_STATUS_UPDATED ? true : false;
            recalculatingPermissions = groups[0].Status != PERMISSION_SET_STATUS_UPDATED;
        }

        String permissionSetName = PERMISSION_SET_GROUP_NAME + '_PS';
        List<SetupEntityAccess> setupEntitiesAccess = [
            SELECT Id, ParentId, SetupEntityId
            FROM SetupEntityAccess
            WHERE ParentId IN (SELECT Id FROM PermissionSet WHERE Name = :permissionSetName) AND SetupEntityId = :connectedAppId
            WITH USER_MODE
        ];

        if (!setupEntitiesAccess.isEmpty()) {
            result.isEnabled = true;
        }
    }

    @TestVisible
    private with sharing class ConnectedAppStatus {
        @TestVisible
        private Id connectedAppId;

        @TestVisible
        private Boolean isInstalled;

        @TestVisible
        private Boolean hasPolicies;

        @TestVisible
        private Boolean hasPermissionSets;

        @TestVisible
        private Boolean isEnabled;

        ConnectedAppStatus(Boolean isInstalled, Boolean hasPolicies, Boolean hasPermissionSets) {
            this.isInstalled = isInstalled;
            this.hasPolicies = hasPolicies;
            this.hasPermissionSets = hasPermissionSets;
            this.isEnabled = false;
        }
    }

    public class Card {
        public String id { get; set; }
        public String title { get; set; }
        public String description { get; set; }

        public String badgeLabel { get; set; }
        public String buttonLabel { get; set; }

        public String linkUrl { get; set; }
        public String imageUrl { get; set; }
    }
}