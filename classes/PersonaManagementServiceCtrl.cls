@SuppressWarnings('PMD.ExcessivePublicCount')
public with sharing class PersonaManagementServiceCtrl {
    private static final String PERMISSION_SET_STATUS_UPDATED = 'Updated';

    private static Map<String, Integer> personaOrderByDeveloperName = new Map<String, Integer>{
        'Release Manager' => 1,
        'Developer' => 2,
        'Quality Engineer' => 3
    };

    @TestVisible
    private static String mockResponse;

    @AuraEnabled
    public static RequirementChecks checkUserPermissions() {
        RequirementChecks result = new RequirementChecks();

        GlobalAPI.ProxyOrgResponse response = getResponse(prepareRequest());
        result.isValidationRuleActive = isValidationRuleActive(response?.content);

        List<Copado_License__c> licenses = [
            SELECT Enable_Copado__c
            FROM Copado_License__c
            WHERE SetupOwnerId = :UserInfo.getUserId()
            WITH SYSTEM_MODE
            LIMIT 1
        ];
        List<UserPermissionAccess> permissionAccesses = [
            SELECT
                PermissionsManageProfilesPermissionsets,
                PermissionsManageUsers,
                PermissionsAssignPermissionSets,
                PermissionsResetPasswords,
                PermissionsViewSetup,
                PermissionsModifyAllData
            FROM UserPermissionAccess
            WITH SYSTEM_MODE
            LIMIT 1
        ];
        result.hasUserPermissions =
            !licenses.isEmpty() &&
            licenses[0].Enable_Copado__c &&
            !permissionAccesses.isEmpty() &&
            permissionAccesses[0].PermissionsManageProfilesPermissionsets &&
            permissionAccesses[0].PermissionsManageUsers &&
            permissionAccesses[0].PermissionsAssignPermissionSets &&
            permissionAccesses[0].PermissionsResetPasswords &&
            permissionAccesses[0].PermissionsViewSetup &&
            permissionAccesses[0].PermissionsModifyAllData;

        return result;
    }

    @AuraEnabled
    public static List<Default_Persona__mdt> getDefaultPersonas() {
        return [SELECT DeveloperName, MasterLabel, Description__c, Icon_Name__c FROM Default_Persona__mdt WITH USER_MODE];
    }

    @AuraEnabled
    public static List<PersonaDefinition> getPersonaDefinitions() {
        Map<String, PersonaDefinition> personaDefinitions = new Map<String, PersonaDefinition>();
        Map<String, Default_Persona__mdt> defaultPersonas = getDefaultPersonasByName();

        for (Persona_Definition__c personaDefinition : getPersonas()) {
            PersonaDefinition personaDefinitionWrapper = new PersonaDefinition()
                .persona(personaDefinition)
                .iconName(getIconName(defaultPersonas.get(personaDefinition.Name)))
                .isStandard(personaDefinition.Is_Standard__c)
                .order(getOrder(personaDefinition));

            personaDefinitions.put(personaDefinition.Id, personaDefinitionWrapper);
        }

        for (User user : [SELECT Id, Persona_Id__c FROM User WHERE Persona_Id__c IN :personaDefinitions.keyset() WITH SYSTEM_MODE]) {
            if (personaDefinitions.containsKey(user.Persona_Id__c)) {
                personaDefinitions.get(user.Persona_Id__c).numberOfUsers += 1;
            }
        }
        return personaDefinitions.values();
    }

    @AuraEnabled
    public static PersonaDefinitionConfig createDefaultPersonaConfig(String personaName) {
        Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
        request.personaName = personaName;
        Persona.CreateConfigResult result = Persona.createConfig(request);
        return result.personaConfig;
    }

    @AuraEnabled
    public static Persona.CreateRecordResult createDefaultPersonaRecord(String personaName, String description, String personaConfig) {
        Persona.CreateRecordRequest request = new Persona.CreateRecordRequest();
        request.personaName = personaName;
        request.description = description;
        request.personaConfig = (PersonaDefinitionConfig) JSON.deserialize(personaConfig, PersonaDefinitionConfig.class);
        request.isStandard = true;
        return Persona.createRecord(request);
    }

    @AuraEnabled
    public static List<String> checkDefaultPersonaUpdates() {
        return new DefaultPersonaUpdateManager().checkForUpdates();
    }

    @AuraEnabled
    public static DefaultPersonaUpdateManager.ApplyUpdatesResult applyDefaultPersonaUpdates(String personaName) {
        return new DefaultPersonaUpdateManager().applyUpdates(personaName);
    }

    @AuraEnabled
    public static void updatePersona(String personaId, String description, String personaConfig) {
        Persona_Definition__c persona = [
            SELECT Description__c, Config_Json__c
            FROM Persona_Definition__c
            WHERE Id = :personaId
            WITH USER_MODE
            LIMIT 1
        ];
        if (String.isNotBlank(description)) {
            persona.Description__c = description;
        }
        if (String.isNotBlank(personaConfig)) {
            persona.Config_Json__c = personaConfig;
        }
        DML.safeUpdate(
            persona,
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{
                    Persona_Definition__c.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'PersonaManagementServiceCtrl.updatePersona'
                }
            )
        );
    }

    @AuraEnabled
    public static List<Persona_Definition__c> getPersonas() {
        return [SELECT Id, Name, Config_Json__c, Is_Standard__c, Description__c FROM Persona_Definition__c WITH USER_MODE ORDER BY CreatedDate ASC];
    }

    @AuraEnabled
    public static PersonaDefinitionConfig createCopyPersonaConfig(String name, String copyFrom) {
        Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
        request.personaName = name;
        request.copyFrom = copyFrom;
        Persona.CreateConfigResult result = Persona.createConfig(request);
        return result.personaConfig;
    }

    @AuraEnabled
    public static Persona.CreateRecordResult createCopyPersonaRecord(String name, String description, String personaConfig) {
        Persona.CreateRecordRequest request = new Persona.CreateRecordRequest();
        request.personaName = name;
        request.description = description;
        request.personaConfig = (PersonaDefinitionConfig) JSON.deserialize(personaConfig, PersonaDefinitionConfig.class);
        request.isStandard = false;
        return Persona.createRecord(request);
    }

    @AuraEnabled
    public static void editPersonaDescription(String personaId, String description) {
        updatePersona(personaId, description, null);
    }

    @AuraEnabled
    public static void deletePersona1(String personaId) {
        Persona.DeletePersonaRequest request = new Persona.DeletePersonaRequest();
        request.personaId = personaId;
        Persona.deletePersona1(request);
    }

    @AuraEnabled
    public static void deletePersona2(String personaId) {
        Persona.DeletePersonaRequest request = new Persona.DeletePersonaRequest();
        request.personaId = personaId;
        Persona.deletePersona2(request);
    }

    @AuraEnabled
    public static void deletePersona3(String personaId) {
        Persona.DeletePersonaRequest request = new Persona.DeletePersonaRequest();
        request.personaId = personaId;
        Persona.deletePersona3(request);
    }

    @AuraEnabled
    public static Boolean isRecalculatingPermissions() {
        return [SELECT COUNT() FROM PermissionSetGroup WHERE Status != :PERMISSION_SET_STATUS_UPDATED] > 0;
    }

    // PRIVATE

    private static Map<String, Default_Persona__mdt> getDefaultPersonasByName() {
        Map<String, Default_Persona__mdt> defaultPersonas = new Map<String, Default_Persona__mdt>();
        for (Default_Persona__mdt defaultPersona : getDefaultPersonas()) {
            defaultPersonas.put(defaultPersona.MasterLabel, defaultPersona);
        }

        return defaultPersonas;
    }

    private static String getIconName(Default_Persona__mdt defaultPersona) {
        return String.isNotBlank(defaultPersona?.Icon_Name__c) ? defaultPersona?.Icon_Name__c : 'utility:user';
    }

    private static Integer getOrder(Persona_Definition__c personaDefinition) {
        return personaOrderByDeveloperName.get(personaDefinition.Name);
    }

    private static GlobalAPI.ProxyOrgRequest prepareRequest() {
        GlobalAPI.ProxyOrgRequest request = new GlobalAPI.ProxyOrgRequest();

        String objectApiName = Schema.Persona_Definition__c.SObjectType.getDescribe().getName();
        String query =
            'SELECT+Active,ValidationName,EntityDefinition.QualifiedApiName,FullName+FROM+ValidationRule+WHERE+ValidationName+=+\'Restrict_Standard_Persona_Modification\'+AND+Active+=+TRUE+AND+EntityDefinition.QualifiedApiName+=+\'' +
            objectApiName +
            '\'';

        request.endPointUrlService = '/services/data/v54.0/tooling/query/?q=' + query;
        request.logLabelIdentifier = 'Persona Management - Checking if the deprecated VR is still active';
        request.requestType = HttpMethod.GET.name();

        return request;
    }

    private static GlobalAPI.ProxyOrgResponse getResponse(GlobalAPI.ProxyOrgRequest request) {
        GlobalAPI.ProxyOrgResponse result;
        if (!Test.isRunningTest()) {
            result = new GlobalAPI().proxyOrgRequest(request);
        } else {
            result = TestUtilities.getMockedResponse(mockResponse);
        }
        return result;
    }

    private static Boolean isValidationRuleActive(String content) {
        if (content == null) {
            return false;
        }
        ResponseContent resContent = (ResponseContent) JSON.deserialize(content, ResponseContent.class);
        return resContent?.size > 0;
    }

    // WRAPPER

    public with sharing class PersonaDefinition {
        @AuraEnabled
        public Integer numberOfUsers;
        @AuraEnabled
        public String iconName;
        @AuraEnabled
        public Persona_Definition__c persona;
        @AuraEnabled
        public Boolean isStandard;

        // Set only for default persona
        @AuraEnabled
        public Integer order;

        public PersonaDefinition() {
            this.numberOfUsers = 0;
        }

        public PersonaDefinition persona(Persona_Definition__c persona) {
            this.persona = persona;
            return this;
        }

        public PersonaDefinition iconName(String iconName) {
            this.iconName = iconName;
            return this;
        }

        public PersonaDefinition numberOfUsers(Integer numberOfUsers) {
            this.numberOfUsers = numberOfUsers;
            return this;
        }
        public PersonaDefinition isStandard(Boolean isStandard) {
            this.isStandard = isStandard;
            return this;
        }
        public PersonaDefinition order(Integer order) {
            this.order = order;
            return this;
        }
    }

    public with sharing class RequirementChecks {
        @AuraEnabled
        public Boolean hasUserPermissions = false;
        @AuraEnabled
        public Boolean isValidationRuleActive = false;
    }

    private class ResponseContent {
        Integer size;
    }
}