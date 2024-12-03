@SuppressWarnings('PMD.ExcessivePublicCount')
public with sharing class PersonaDefinitionConfig {
    @AuraEnabled
    public List<ConfigEntry> permissionSets;
    @AuraEnabled
    public List<ConfigEntry> permissionSetGroups;
    @AuraEnabled
    public List<ConfigEntry> appPermissions;
    @AuraEnabled
    public List<ConfigEntry> customPermissions;
    @AuraEnabled
    public List<ConfigEntry> licenses;
    @AuraEnabled
    public List<ConfigEntry> packageLicenses;
    @AuraEnabled
    public List<Id> credentialIds;
    @AuraEnabled
    public Id publicGroupId;
    @AuraEnabled
    public String defaultCredentialAccessLevel;
    @AuraEnabled
    public List<FeatureEntry> features;

    public PersonaDefinitionConfig() {
        permissionSets = new List<ConfigEntry>();
        permissionSetGroups = new List<ConfigEntry>();
        appPermissions = new List<ConfigEntry>();
        customPermissions = new List<ConfigEntry>();
        licenses = new List<ConfigEntry>();
        packageLicenses = new List<ConfigEntry>();
        credentialIds = new List<Id>();
        defaultCredentialAccessLevel = 'read';
        features = new List<FeatureEntry>();
    }

    public String getPersonaPermissionSetGroup() {
        return this.permissionSetGroups[0].name;
    }

    public String getPersonaPermissionSet() {
        return this.permissionSets[0].name;
    }

    public List<ConfigEntry> getAssignedPermissionSetGroups() {
        return (List<ConfigEntry>) slice(this.permissionSetGroups, 1, this.permissionSetGroups.size());
    }

    public List<ConfigEntry> getAssignedPermissionSets() {
        return (List<ConfigEntry>) slice(this.permissionSets, 1, this.permissionSets.size());
    }

  public void addFeature(FeatureEntry featureEntry) {
        if (this.features == null) {
            this.features = new List<FeatureEntry>();
        }
        this.features.add(featureEntry);
    }

    public List<ConfigEntry> getPermissionsByType(PermissionType type) {
        switch on type {
            when PermissionSetGroup {
                return getAssignedPermissionSetGroups();
            }
            when PermissionSet {
                return getAssignedPermissionSets();
            }
            when AppPermission {
                return this.appPermissions;
            }
            when CustomPermission {
                return this.customPermissions;
            }
            when CopadoLicense {
                return this.licenses;
            }
            when PackageLicense {
                return this.packageLicenses;
            }
            when else {
                return null;
            }
        }
    }

    private static List<Object> slice(List<Object> input, Integer ge, Integer l) {
        if (ge < 0) {
            ge += input.size();
        }
        if (l < 0) {
            l += input.size();
        }
        List<Object> output = input.clone();
        for (Integer i = 0; i < ge; i++) {
            output.remove(0);
        }
        Integer elements = l - ge;
        while (output.size() > elements) {
            output.remove(elements);
        }
        return output;
    }

    public with sharing class ConfigEntry {
        @AuraEnabled
        public String name;
        @AuraEnabled
        public Boolean isStandard;

        public ConfigEntry() {
            this.isStandard = false;
        }

        public ConfigEntry name(String name) {
            this.name = name;
            return this;
        }

        public ConfigEntry isStandard() {
            this.isStandard = true;
            return this;
        }

        public Boolean equals(Object obj) {
            if (obj != null && obj instanceof ConfigEntry) {
                ConfigEntry entry = (ConfigEntry) obj;
                return name == entry.name && isStandard == entry.isStandard;
            } else {
                return false;
            }
        }
        public Integer hashCode() {
            return (name + isStandard).hashCode();
        }
    }

    public with sharing class FeatureEntry {
        @AuraEnabled
        public String name;
        @AuraEnabled
        public String customPermission;
        @AuraEnabled
        public Boolean enabled;
        @AuraEnabled
        public FeatureRequirements featureRequirements;

        public FeatureEntry() {
            this.enabled = false;
            this.featureRequirements = new FeatureRequirements();
        }

        public FeatureEntry name(String name) {
            this.name = name;
            return this;
        }

        public FeatureEntry customPermission(String customPermission) {
            this.customPermission = customPermission;
            return this;
        }

        public FeatureEntry enabled() {
            this.enabled = true;
            return this;
        }

        public FeatureEntry featureRequirements(FeatureRequirements featureRequirements) {
            this.featureRequirements = featureRequirements;
            return this;
        }

        public Boolean equals(Object obj) {
            if (obj != null && obj instanceof ConfigEntry) {
                FeatureEntry entry = (FeatureEntry) obj;
                return name == entry.name && customPermission == entry.customPermission && enabled == entry.enabled;
            } else {
                return false;
            }
        }
        public Integer hashCode() {
            return (name + customPermission + enabled).hashCode();
        }
    }

    public with sharing class FeatureRequirements {
        @AuraEnabled
        public List<RequirementEntry> permissionSets;
        @AuraEnabled
        public List<RequirementEntry> permissionSetGroups;
        @AuraEnabled
        public List<RequirementEntry> customPermissions;
        @AuraEnabled
        public List<RequirementEntry> licenses;

        public FeatureRequirements() {
            this.permissionSets = new List<RequirementEntry>();
            this.permissionSetGroups = new List<RequirementEntry>();
            this.customPermissions = new List<RequirementEntry>();
            this.licenses = new List<RequirementEntry>();
        }

        public FeatureRequirements addPermissionSet(String permissionSet) {
            this.permissionSets.add(new RequirementEntry().name(permissionSet));
            return this;
        }

        public FeatureRequirements addPermissionSet(List<RequirementEntry> permissionSets) {
            this.permissionSets = permissionSets;
            return this;
        }

        public FeatureRequirements addPermissionSetGroup(String permissionSetGroup) {
            this.permissionSetGroups.add(new RequirementEntry().name(permissionSetGroup));
            return this;
        }

        public FeatureRequirements addPermissionSetGroup(List<RequirementEntry> permissionSetGroups) {
            this.permissionSetGroups = permissionSetGroups;
            return this;
        }

        public FeatureRequirements addCustomPermission(String customPermission) {
            this.customPermissions.add(new RequirementEntry().name(customPermission));
            return this;
        }

        public FeatureRequirements addCustomPermission(List<RequirementEntry> customPermissions) {
            this.customPermissions = customPermissions;
            return this;
        }

        public FeatureRequirements addLicense(String license) {
            this.licenses.add(new RequirementEntry().name(license));
            return this;
        }

        public FeatureRequirements addLicense(List<RequirementEntry> licenses) {
            this.licenses = licenses;
            return this;
        }
    }

    public with sharing class RequirementEntry {
        @AuraEnabled
        public String name;

        public RequirementEntry name(String name) {
            this.name = name;
            return this;
        }

        public Boolean equals(Object obj) {
            if (obj != null && obj instanceof RequirementEntry) {
                RequirementEntry entry = (RequirementEntry) obj;
                return name == entry.name;
            } else {
                return false;
            }
        }
        public Integer hashCode() {
            return (name).hashCode();
        }
    }

    @SuppressWarnings('PMD.FieldNamingConventions')
    public enum PermissionType {
        PermissionSet,
        PermissionSetGroup,
        CustomPermission,
        AppPermission,
        CopadoLicense,
        PackageLicense,
        CredentialAccessLevel
    }
}