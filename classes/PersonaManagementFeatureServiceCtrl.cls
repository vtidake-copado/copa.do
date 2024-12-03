@SuppressWarnings('PMD.CognitiveComplexity,PMD.CyclomaticComplexity,PMD.ExcessivePublicCount')
public with sharing class PersonaManagementFeatureServiceCtrl {
    private static final String TIER_GROUP_TYPE = 'Tier';

    // PUBLIC

    @AuraEnabled
    public static FeatureToggleWrapper getFeatureToggles(String personaId) {
        FeatureToggleWrapper result = new FeatureToggleWrapper();
        List<Feature_Toggle__mdt> featureToggles = FeatureServiceHelper.getFeatureToggleRecords();
        result.groups = groupFeatureToggles(featureToggles, personaId);
        return result;
    }

    @AuraEnabled
    public static void enableFeature1(String personaId, String featureName) {
        Persona.EnableFeatureRequest request = new Persona.EnableFeatureRequest();
        request.personaId = personaId;
        request.featureName = featureName;
        Persona.FeatureToggleService.enableFeature1(request);
    }

    @AuraEnabled
    public static void enableFeature2(String personaId, String featureName) {
        Persona.EnableFeatureRequest request = new Persona.EnableFeatureRequest();
        request.personaId = personaId;
        request.featureName = featureName;
        Persona.FeatureToggleService.enableFeature2(request);
    }

    @AuraEnabled
    public static void disableFeature1(String personaId, String featureName) {
        Persona.DisableFeatureRequest request = new Persona.DisableFeatureRequest();
        request.personaId = personaId;
        request.featureName = featureName;
        Persona.FeatureToggleService.disableFeature1(request);
    }

    @AuraEnabled
    public static void disableFeature2(String personaId, String featureName) {
        Persona.DisableFeatureRequest request = new Persona.DisableFeatureRequest();
        request.personaId = personaId;
        request.featureName = featureName;
        Persona.FeatureToggleService.disableFeature2(request);
    }

    // PRIVATE

    private static List<FeatureToggleGroup> groupFeatureToggles(List<Feature_Toggle__mdt> featureToggles, String personaId) {
        PersonaDefinitionConfig config = PersonaServiceHelper.getPersonaDefinition(personaId);
        List<String> enabledFeatures = getEnabledFeatures(config);
        Map<String, FeatureToggleGroup> groupsByName = new Map<String, FeatureToggleGroup>();
        for (Feature_Toggle__mdt featureToggle : featureToggles) {
            FeatureToggleGroup toggleGroup = getGroup(featureToggle);
            if (!groupsByName.containsKey(toggleGroup.name)) {
                groupsByName.put(toggleGroup.name, toggleGroup);
            }
            toggleGroup = groupsByName.get(toggleGroup.name);
            FeatureToggle toggle = getToggle(featureToggle, config, enabledFeatures);
            toggleGroup.featureToggles.add(toggle);
        }
        enableDisableFeatureTierOption(groupsByName);
        return groupsByName.values();
    }

    private static void enableDisableFeatureTierOption(Map<String, FeatureToggleGroup> groupsByName) {
        for (FeatureToggleGroup toggleGroup : groupsByName.values()) {
            if (toggleGroup.type != TIER_GROUP_TYPE) {
                continue;
            }
            if (!isAnyToggleEnabled(toggleGroup.featureToggles)) {
                for (FeatureToggle toggle : toggleGroup.featureToggles) {
                    if (String.isBlank(toggle.customPermissionName)) {
                        toggle.enabled = true;
                        break;
                    }
                }
            }
        }
    }

    private static Boolean isAnyToggleEnabled(List<FeatureToggle> featureToggles) {
        for (FeatureToggle toggle : featureToggles) {
            if (toggle.enabled) {
                return true;
            }
        }
        return false;
    }

    private static FeatureToggleGroup getGroup(Feature_Toggle__mdt featureToggle) {
        FeatureToggleGroup toggleGroup = new FeatureToggleGroup();
        toggleGroup.name = featureToggle.Feature_Toggle_Group__r.DeveloperName;
        toggleGroup.label = featureToggle.Feature_Toggle_Group__r.MasterLabel;
        toggleGroup.iconName = featureToggle.Feature_Toggle_Group__r.Icon_Name__c;
        toggleGroup.description = featureToggle.Feature_Toggle_Group__r.Description__c;
        toggleGroup.type = featureToggle.Feature_Toggle_Group__r.Type__c;
        toggleGroup.order = Integer.valueOf(featureToggle.Feature_Toggle_Group__r.Order__c);
        return toggleGroup;
    }

    private static FeatureToggle getToggle(Feature_Toggle__mdt featureToggle, PersonaDefinitionConfig config, List<String> enabledFeatures) {
        FeatureToggle toggle = new FeatureToggle();
        toggle.name = featureToggle.DeveloperName;
        toggle.label = featureToggle.MasterLabel;
        toggle.customPermissionName = featureToggle.Custom_Permission_Name__c;
        toggle.shortDescription = featureToggle.Short_Description__c;
        toggle.fullDescription = featureToggle.Full_Description__c;
        toggle.order = Integer.valueOf(featureToggle.Order__c);

        toggle.enabled = enabledFeatures.contains(featureToggle.DeveloperName);
        for (Feature_Toggle_Requirement__mdt featureToggleRequirement : featureToggle.Feature_Toggle_Requirements__r) {
            String type = featureToggleRequirement.Type__c;
            String value = featureToggleRequirement.Value__c;
            if (
                type == PersonaDefinitionConfig.PermissionType.PermissionSetGroup.name() &&
                !configContains(config.getAssignedPermissionSetGroups(), value)
            ) {
                toggle.missingPermissionSetGroups.add(value);
            } else if (
                type == PersonaDefinitionConfig.PermissionType.PermissionSet.name() && !configContains(config.getAssignedPermissionSets(), value)
            ) {
                toggle.missingPermissionSets.add(value);
            } else if (type == PersonaDefinitionConfig.PermissionType.CustomPermission.name() && !configContains(config.customPermissions, value)) {
                toggle.missingCustomPermissions.add(value);
            } else if (type == PersonaDefinitionConfig.PermissionType.CopadoLicense.name() && !configContains(config.licenses, value)) {
                toggle.missingLicenses.add(value);
            }
        }
        return toggle;
    }

    private static Boolean configContains(List<PersonaDefinitionConfig.ConfigEntry> configEntries, String value) {
        for (PersonaDefinitionConfig.ConfigEntry entry : configEntries) {
            if (entry.name == value) {
                return true;
            }
        }
        return false;
    }

    private static List<String> getEnabledFeatures(PersonaDefinitionConfig config) {
        List<String> result = new List<String>();
        if (config.features != null) {
            for (PersonaDefinitionConfig.FeatureEntry entry : config.features) {
                result.add(entry.name);
            }
        }
        return result;
    }

    // WRAPPER

    public with sharing class FeatureToggleWrapper {
        @AuraEnabled
        public List<FeatureToggleGroup> groups;

        public FeatureToggleWrapper() {
            this.groups = new List<FeatureToggleGroup>();
        }
    }

    public with sharing class FeatureToggleGroup {
        @AuraEnabled
        public String name;
        @AuraEnabled
        public String label;
        @AuraEnabled
        public String iconName;
        @AuraEnabled
        public String description;
        @AuraEnabled
        public String type;
        @AuraEnabled
        public Integer order;
        @AuraEnabled
        public List<FeatureToggle> featureToggles;

        public FeatureToggleGroup() {
            this.featureToggles = new List<FeatureToggle>();
        }
    }

    public with sharing class FeatureToggle {
        @AuraEnabled
        public String name;
        @AuraEnabled
        public String label;
        @AuraEnabled
        public String customPermissionName;
        @AuraEnabled
        public String shortDescription;
        @AuraEnabled
        public String fullDescription;
        @AuraEnabled
        public Integer order;
        // properties coming from persona json
        @AuraEnabled
        public Boolean enabled;
        @AuraEnabled
        public List<String> missingLicenses;
        @AuraEnabled
        public List<String> missingPermissionSets;
        @AuraEnabled
        public List<String> missingPermissionSetGroups;
        @AuraEnabled
        public List<String> missingCustomPermissions;

        public FeatureToggle() {
            this.missingLicenses = new List<String>();
            this.missingPermissionSets = new List<String>();
            this.missingPermissionSetGroups = new List<String>();
            this.missingCustomPermissions = new List<String>();
        }
    }
}