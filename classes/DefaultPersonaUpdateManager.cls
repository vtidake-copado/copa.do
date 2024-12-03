@SuppressWarnings('PMD.CyclomaticComplexity, PMD.StdCyclomaticComplexity, PMD.CognitiveComplexity, PMD.NcssMethodCount')
public with sharing class DefaultPersonaUpdateManager {
    @TestVisible
    private static List<Default_Persona__mdt> mock;
    private Map<PersonaDefinitionConfig.PermissionType, List<String>> permissionsToAddByType = new Map<PersonaDefinitionConfig.PermissionType, List<String>>{
        PersonaDefinitionConfig.PermissionType.PermissionSetGroup => new List<String>(),
        PersonaDefinitionConfig.PermissionType.PermissionSet => new List<String>(),
        PersonaDefinitionConfig.PermissionType.AppPermission => new List<String>(),
        PersonaDefinitionConfig.PermissionType.CustomPermission => new List<String>(),
        PersonaDefinitionConfig.PermissionType.CopadoLicense => new List<String>(),
        PersonaDefinitionConfig.PermissionType.PackageLicense => new List<String>()
    };

    // PUBLIC

    public List<String> checkForUpdates() {
        List<String> personasToUpdate = new List<String>();

        Map<String, Persona_Definition__c> personaByName = getPersonasByName();

        for (Default_Persona__mdt defaultPersona : getDefaultPersonas()) {
            Persona_Definition__c personaDefinition = personaByName.get(defaultPersona.MasterLabel);
            if (
                personaDefinition == null ||
                descriptionUpdated(personaDefinition, defaultPersona) ||
                defaultPermissionsNotSet(personaDefinition, defaultPersona)
            ) {
                personasToUpdate.add(defaultPersona.MasterLabel);
            }
        }
        return personasToUpdate;
    }

    public ApplyUpdatesResult applyUpdates(String personaName) {
        ApplyUpdatesResult result = new ApplyUpdatesResult();
        Default_Persona__mdt defaultPersona = getDefaultPersona(personaName);
        Map<String, Persona_Definition__c> personaByName = getPersonasByName();
        Persona_Definition__c personaDefinition = personaByName.get(defaultPersona.MasterLabel);
        if (personaDefinition == null) {
            result.defaultPersonaToCreate = defaultPersona;
        } else {
            result.updatedPersonaId = personaDefinition.Id;
            result.updatedPersonaDescription = defaultPersona.Description__c;
            PersonaDefinitionConfig updatedConfig = modifyConfigJson(personaDefinition, defaultPersona);
            result.updatedPersonaConfigJson = JSON.serialize(updatedConfig);
        }
        return result;
    }

    // PRIVATE

    private Map<String, Persona_Definition__c> getPersonasByName() {
        Map<String, Persona_Definition__c> result = new Map<String, Persona_Definition__c>();
        for (Persona_Definition__c personaDefinition : [SELECT Name, Description__c, Config_JSON__c FROM Persona_Definition__c WITH USER_MODE]) {
            result.put(personaDefinition.Name, personaDefinition);
        }
        return result;
    }

    private Boolean descriptionUpdated(Persona_Definition__c personaDefinition, Default_Persona__mdt defaultPersona) {
        return !defaultPersona.Description__c.equalsIgnoreCase(personaDefinition.Description__c);
    }

    private Boolean defaultPermissionsNotSet(Persona_Definition__c personaDefinition, Default_Persona__mdt defaultPersona) {
        PersonaDefinitionConfig config = getConfig(personaDefinition);

        for (Default_Persona_Permission__mdt defaultPersonaPermission : defaultPersona.Default_Persona_Permissions__r) {
            PersonaDefinitionConfig.PermissionType type = PersonaDefinitionConfig.PermissionType.valueOf(defaultPersonaPermission.Type__c);
            String value = defaultPersonaPermission.Value__c;

            if (type == PersonaDefinitionConfig.PermissionType.CredentialAccessLevel && config.defaultCredentialAccessLevel != value) {
                return true;
            } else if (
                type != PersonaDefinitionConfig.PermissionType.CredentialAccessLevel && !configContains(config.getPermissionsByType(type), value)
            ) {
                return true;
            }
        }

        if (config.features == null) {
            return true;
        } else {
            Map<String, String> customPermissionNameByFeature = new Map<String, String>();
            Map<String, List<PersonaDefinitionConfig.RequirementEntry>> requirementEntriesByFeature = new Map<String, List<PersonaDefinitionConfig.RequirementEntry>>();
            Map<String, PersonaDefinitionConfig.FeatureEntry> featureEntriesByFeatureNames = new Map<String, PersonaDefinitionConfig.FeatureEntry>();

            for (PersonaDefinitionConfig.FeatureEntry featureEntry : config.features) {
                if (featureEntry.enabled) {
                    customPermissionNameByFeature.put(featureEntry.name, featureEntry.customPermission);
                    featureEntriesByFeatureNames.put(featureEntry.name, featureEntry);

                    List<PersonaDefinitionConfig.RequirementEntry> requirementEntries = new List<PersonaDefinitionConfig.RequirementEntry>();
                    requirementEntries.addAll(featureEntry.featureRequirements.permissionSets);
                    requirementEntries.addAll(featureEntry.featureRequirements.permissionSetGroups);
                    requirementEntries.addAll(featureEntry.featureRequirements.customPermissions);
                    requirementEntries.addAll(featureEntry.featureRequirements.licenses);

                    requirementEntriesByFeature.put(featureEntry.name, requirementEntries);
                }
            }

            for (Feature_Toggle__mdt featureToggle : FeatureServiceHelper.getFeatureToggleRecords()) {
                PersonaDefinitionConfig.FeatureEntry featureEntry = featureEntriesByFeatureNames.get(featureToggle.DeveloperName);

                if (featureEntry != null) {
                    if (
                        customPermissionNameByFeature.containsKey(featureToggle.DeveloperName) &&
                        (customPermissionNameByFeature.get(featureToggle.DeveloperName) == null ||
                        !customPermissionNameByFeature.get(featureToggle.DeveloperName).equalsIgnoreCase(featureToggle.Custom_Permission_Name__c))
                    ) {
                        return true;
                    }

                    for (Feature_Toggle_Requirement__mdt featureToggleRequirement : featureToggle.Feature_Toggle_Requirements__r) {
                        String value = featureToggleRequirement.Value__c;

                        if (!configContains(requirementEntriesByFeature.get(featureToggle.DeveloperName), value)) {
                            return true;
                        }
                    }
                }
            }
        }

        return false;
    }

    private PersonaDefinitionConfig modifyConfigJson(Persona_Definition__c personaDefinition, Default_Persona__mdt defaultPersona) {
        PersonaDefinitionConfig config = getConfig(personaDefinition);
        String newDefaultAccessLevel = config.defaultCredentialAccessLevel;

        for (Default_Persona_Permission__mdt defaultPersonaPermission : defaultPersona.Default_Persona_Permissions__r) {
            PersonaDefinitionConfig.PermissionType type = PersonaDefinitionConfig.PermissionType.valueOf(defaultPersonaPermission.Type__c);
            String value = defaultPersonaPermission.Value__c;

            if (type == PersonaDefinitionConfig.PermissionType.CredentialAccessLevel && config.defaultCredentialAccessLevel != value) {
                newDefaultAccessLevel = value;
            } else if (
                type != PersonaDefinitionConfig.PermissionType.CredentialAccessLevel && !configContains(config.getPermissionsByType(type), value)
            ) {
                permissionsToAddByType.get(type).add(value);
            }
        }

        if (config.features == null) {
            PersonaServiceImpl.createDefaultCopadoPlanFeatureToggle(config);
        } else {
            updateFeatureEntries(config);
        }

        addMissingPermissionsAndLicenses(personaDefinition, config);
        updateCredentialAccessLevel(newDefaultAccessLevel, config);

        return config;
    }

    private void addMissingPermissionsAndLicenses(Persona_Definition__c personaDefinition, PersonaDefinitionConfig config) {
        addMissingPermissionSetGroups(
            permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.PermissionSetGroup),
            personaDefinition,
            config
        );
        addMissingCopadoLicenses(permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.CopadoLicense), personaDefinition, config);
        addMissingPackageLicenses(permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.PackageLicense), personaDefinition, config);
        addMissingPermissionSets(permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.PermissionSet), config);
        addMissingApps(permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.AppPermission), config);
        addMissingCustomPermissions(permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.CustomPermission), config);
    }

    private void addMissingPermissionSetGroups(
        List<String> permissionSetGroupsToAdd,
        Persona_Definition__c personaDefinition,
        PersonaDefinitionConfig config
    ) {
        if (permissionSetGroupsToAdd.isEmpty()) {
            return;
        }
        Persona.AddPermissionRequest addPermissionRequest = new Persona.AddPermissionRequest();
        addPermissionRequest.personaId = personaDefinition.Id;
        addPermissionRequest.permissionSetGroups = permissionSetGroupsToAdd;
        Persona.PermissionService.add1(addPermissionRequest);
        for (String permissionSetGroup : permissionSetGroupsToAdd) {
            config.permissionSetGroups.add(new PersonaDefinitionConfig.ConfigEntry().name(permissionSetGroup).isStandard());
        }
    }

    private void addMissingCopadoLicenses(List<String> licensesToAdd, Persona_Definition__c personaDefinition, PersonaDefinitionConfig config) {
        if (licensesToAdd.isEmpty()) {
            return;
        }
        Persona.AddLicenseRequest addLicenseRequest = new Persona.AddLicenseRequest();
        addLicenseRequest.personaId = personaDefinition.Id;
        addLicenseRequest.licenses = licensesToAdd;
        Persona.LicenseService.addCopadoLicense1(addLicenseRequest);
        for (String license : licensesToAdd) {
            config.licenses.add(new PersonaDefinitionConfig.ConfigEntry().name(license).isStandard());
        }
    }

    private void addMissingPackageLicenses(List<String> licensesToAdd, Persona_Definition__c personaDefinition, PersonaDefinitionConfig config) {
        if (licensesToAdd.isEmpty()) {
            return;
        }
        Persona.AddLicenseRequest addLicenseRequest = new Persona.AddLicenseRequest();
        addLicenseRequest.personaId = personaDefinition.Id;
        addLicenseRequest.licenses = licensesToAdd;
        Persona.LicenseService.addPackageLicense1(addLicenseRequest);
        for (String license : licensesToAdd) {
            config.packageLicenses.add(new PersonaDefinitionConfig.ConfigEntry().name(license).isStandard());
        }
    }

    private void addMissingPermissionSets(List<String> permissionSetsToAdd, PersonaDefinitionConfig config) {
        if (permissionSetsToAdd.isEmpty()) {
            return;
        }
        PermissionSetGroup permissionSetGroup = [
            SELECT Id
            FROM PermissionSetGroup
            WHERE DeveloperName = :config.getPersonaPermissionSetGroup()
            WITH USER_MODE
            LIMIT 1
        ];
        List<PermissionSetGroupComponent> components = new List<PermissionSetGroupComponent>();
        for (PermissionSet permissionSet : [SELECT Id, Name FROM PermissionSet WHERE Name IN :permissionSetsToAdd WITH USER_MODE]) {
            components.add(new PermissionSetGroupComponent(PermissionSetGroupId = permissionSetGroup.Id, PermissionSetId = permissionSet.Id));
        }
        DML.safeInsert(
            components,
            String.format(
                Label.ErrorWhileInserting,
                new List<String>{
                    PermissionSetGroupComponent.SObjectType.getDescribe(SObjectDescribeOptions.DEFERRED).getLabel(),
                    'DefaultPersonaUpdateManager.addMissingPermissionSets'
                }
            )
        );
        for (String permissionSet : permissionSetsToAdd) {
            config.permissionSets.add(new PersonaDefinitionConfig.ConfigEntry().name(permissionSet).isStandard());
        }
    }

    private void addMissingApps(List<String> appPermissionsToAdd, PersonaDefinitionConfig config) {
        if (appPermissionsToAdd.isEmpty()) {
            return;
        }
        PermissionSet permissionSet = [SELECT Id FROM PermissionSet WHERE Name = :config.getPersonaPermissionSet() WITH USER_MODE LIMIT 1];
        List<SetupEntityAccess> appPermissions = new List<SetupEntityAccess>();
        for (AppMenuItem appMenuItem : [
            SELECT Id, ApplicationId
            FROM AppMenuItem
            WHERE Type = 'TabSet' AND Name IN :appPermissionsToAdd
            WITH USER_MODE
        ]) {
            appPermissions.add(new SetupEntityAccess(SetupEntityId = appMenuItem.ApplicationId, ParentId = permissionSet.Id));
        }

        DML.safeInsert(
            appPermissions,
            String.format(Label.ErrorWhileInserting, new List<String>{ 'SetupEntityAccess', 'DefaultPersonaUpdateManager.addMissingApps' })
        );
        for (String appPermission : appPermissionsToAdd) {
            config.appPermissions.add(new PersonaDefinitionConfig.ConfigEntry().name(appPermission).isStandard());
        }
    }

    private void addMissingCustomPermissions(List<String> customPermissionsToAdd, PersonaDefinitionConfig config) {
        if (customPermissionsToAdd.isEmpty()) {
            return;
        }
        PermissionSet permissionSet = [SELECT Id FROM PermissionSet WHERE Name = :config.getPersonaPermissionSet() WITH USER_MODE LIMIT 1];
        List<SetupEntityAccess> customPermissions = new List<SetupEntityAccess>();
        for (CustomPermission customPermission : [SELECT Id FROM CustomPermission WHERE DeveloperName IN :customPermissionsToAdd WITH USER_MODE]) {
            customPermissions.add(new SetupEntityAccess(SetupEntityId = customPermission.Id, ParentId = permissionSet.Id));
        }

        DML.safeInsert(
            customPermissions,
            String.format(
                Label.ErrorWhileInserting,
                new List<String>{ 'SetupEntityAccess', 'DefaultPersonaUpdateManager.addMissingCustomPermissions' }
            )
        );

        for (String customPermission : customPermissionsToAdd) {
            config.customPermissions.add(new PersonaDefinitionConfig.ConfigEntry().name(customPermission).isStandard());
        }
    }

    private void updateCredentialAccessLevel(String newDefaultAccessLevel, PersonaDefinitionConfig config) {
        config.defaultCredentialAccessLevel = newDefaultAccessLevel;
    }

    private Boolean configContains(List<PersonaDefinitionConfig.ConfigEntry> configEntries, String value) {
        Set<PersonaDefinitionConfig.ConfigEntry> entriesSet = new Set<PersonaDefinitionConfig.ConfigEntry>(configEntries);
        return !entriesSet.isEmpty() && entriesSet.contains(new PersonaDefinitionConfig.ConfigEntry().name(value).isStandard());
    }

    private List<Default_Persona__mdt> getDefaultPersonas() {
        if (Test.isRunningTest() && mock != null) {
            return mock;
        } else {
            return [
                SELECT MasterLabel, DeveloperName, Description__c, (SELECT Type__c, Value__c FROM Default_Persona_Permissions__r)
                FROM Default_Persona__mdt
                WITH USER_MODE
            ];
        }
    }

    private static PersonaDefinitionConfig getConfig(Persona_Definition__c personaDefinition) {
        PersonaDefinitionConfig config = (PersonaDefinitionConfig) JSON.deserialize(personaDefinition.Config_JSON__c, PersonaDefinitionConfig.class);
        if (config.packageLicenses == null) {
            config.packageLicenses = new List<PersonaDefinitionConfig.ConfigEntry>();
        }

        return config;
    }

    private static Default_Persona__mdt getDefaultPersona(String personaName) {
        if (Test.isRunningTest() && mock != null) {
            return mock[0];
        } else {
            List<Default_Persona__mdt> defaultPersonas = [
                SELECT MasterLabel, DeveloperName, Description__c, (SELECT Type__c, Value__c FROM Default_Persona_Permissions__r)
                FROM Default_Persona__mdt
                WHERE DeveloperName = :personaName.replaceAll('\\s+', '_')
                WITH USER_MODE
                LIMIT 1
            ];
            return !defaultPersonas.isEmpty()
                ? defaultPersonas[0]
                : new Default_Persona__mdt(DeveloperName = personaName.replaceAll('\\s+', '_'), MasterLabel = personaName);
        }
    }

    // FEATURE TOGGLE

    private Boolean configContains(List<PersonaDefinitionConfig.RequirementEntry> configEntries, String value) {
        Set<PersonaDefinitionConfig.RequirementEntry> entriesSet = new Set<PersonaDefinitionConfig.RequirementEntry>(configEntries);
        return !entriesSet.isEmpty() && entriesSet.contains(new PersonaDefinitionConfig.RequirementEntry().name(value));
    }

    private void updateFeatureEntries(PersonaDefinitionConfig config) {
        Map<String, PersonaDefinitionConfig.FeatureEntry> featureEntriesByFeatureNames = new Map<String, PersonaDefinitionConfig.FeatureEntry>();
        Map<String, String> customPermissionNameByFeature = new Map<String, String>();
        Set<String> allRequirementValues = new Set<String>();

        for (PersonaDefinitionConfig.FeatureEntry featureEntry : config.features) {
            if (featureEntry.enabled) {
                customPermissionNameByFeature.put(featureEntry.name, featureEntry.customPermission);
                featureEntriesByFeatureNames.put(featureEntry.name, featureEntry);
                allRequirementValues.addAll(extractRequirementValues(featureEntry));
            }
        }

        for (Feature_Toggle__mdt featureToggle : FeatureServiceHelper.getFeatureToggleRecords()) {
            PersonaDefinitionConfig.FeatureEntry featureEntry = featureEntriesByFeatureNames.get(featureToggle.DeveloperName);

            if (featureEntry != null) {
                updateCustomPermissionForFeatureEntry(featureToggle, featureEntry, customPermissionNameByFeature);
                addMissingRequirements(featureToggle, featureEntry, allRequirementValues, config);
            }
        }
    }

    private Set<String> extractRequirementValues(PersonaDefinitionConfig.FeatureEntry featureEntry) {
        Set<String> result = new Set<String>();
        for (PersonaDefinitionConfig.RequirementEntry req : featureEntry.featureRequirements.permissionSets) {
            result.add(req.name);
        }

        for (PersonaDefinitionConfig.RequirementEntry req : featureEntry.featureRequirements.permissionSetGroups) {
            result.add(req.name);
        }

        for (PersonaDefinitionConfig.RequirementEntry req : featureEntry.featureRequirements.customPermissions) {
            result.add(req.name);
        }

        for (PersonaDefinitionConfig.RequirementEntry req : featureEntry.featureRequirements.licenses) {
            result.add(req.name);
        }
        return result;
    }

    private void updateCustomPermissionForFeatureEntry(
        Feature_Toggle__mdt featureToggle,
        PersonaDefinitionConfig.FeatureEntry featureEntry,
        Map<String, String> customPermissionNameByFeature
    ) {
        String currentCustomPermission = customPermissionNameByFeature.get(featureToggle.DeveloperName);
        if (currentCustomPermission == null || !currentCustomPermission.equalsIgnoreCase(featureToggle.Custom_Permission_Name__c)) {
            featureEntry.customPermission = featureToggle.Custom_Permission_Name__c;
        }
    }

    @SuppressWarnings('PMD.ExcessiveParameterList')
    private void addMissingRequirements(
        Feature_Toggle__mdt featureToggle,
        PersonaDefinitionConfig.FeatureEntry featureEntry,
        Set<String> allRequirementValues,
        PersonaDefinitionConfig config
    ) {
        for (Feature_Toggle_Requirement__mdt featureToggleRequirement : featureToggle.Feature_Toggle_Requirements__r) {
            String type = featureToggleRequirement.Type__c;
            String value = featureToggleRequirement.Value__c;

            if (!allRequirementValues.contains(value)) {
                switch on (PersonaDefinitionConfig.PermissionType.valueOf(type)) {
                    when PermissionSetGroup {
                        if (!configContains(config.permissionSetGroups, value)) {
                            permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.PermissionSetGroup).add(value);
                        }
                        featureEntry.featureRequirements.permissionSetGroups.add(new PersonaDefinitionConfig.RequirementEntry().name(value));
                    }
                    when PermissionSet {
                        if (!configContains(config.permissionSets, value)) {
                            permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.PermissionSet).add(value);
                        }
                        featureEntry.featureRequirements.permissionSets.add(new PersonaDefinitionConfig.RequirementEntry().name(value));
                    }
                    when CustomPermission {
                        if (!configContains(config.customPermissions, value)) {
                            permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.CustomPermission).add(value);
                        }
                        featureEntry.featureRequirements.customPermissions.add(new PersonaDefinitionConfig.RequirementEntry().name(value));
                    }
                    when CopadoLicense {
                        if (!configContains(config.licenses, value)) {
                            permissionsToAddByType.get(PersonaDefinitionConfig.PermissionType.CopadoLicense).add(value);
                        }
                        featureEntry.featureRequirements.licenses.add(new PersonaDefinitionConfig.RequirementEntry().name(value));
                    }
                }
                allRequirementValues.add(value);
            }
        }
    }

    // WRAPPER

    public with sharing class ApplyUpdatesResult {
        @AuraEnabled
        public Default_Persona__mdt defaultPersonaToCreate;
        @AuraEnabled
        public String updatedPersonaId;
        @AuraEnabled
        public String updatedPersonaConfigJson;
        @AuraEnabled
        public String updatedPersonaDescription;
    }
}