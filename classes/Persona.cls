@SuppressWarnings(
    'PMD.VariableNamingConventions,PMD.PropertyNamingConventions,PMD.ExcessivePublicCount, PMD.CognitiveComplexity, PMD.AvoidGlobalModifier'
)
global inherited sharing class Persona implements CopadoDomain {
    /************ CREATE ***********************/

    public static CreateConfigResult createConfig(CreateConfigRequest request) {
        Savepoint sp = Database.setSavepoint();
        try {
            return PersonaServiceImpl.createConfig(request);
        } catch (Exception e) {
            Database.rollback(sp);
            throw new ApplicationException(e.getMessage());
        }
    }

    public static CreateRecordResult createRecord(CreateRecordRequest request) {
        Savepoint sp = Database.setSavepoint();
        try {
            return PersonaServiceImpl.createRecord(request);
        } catch (Exception e) {
            Database.rollback(sp);
            throw new ApplicationException(e.getMessage());
        }
    }

    public static void deletePersona1(DeletePersonaRequest request) {
        Savepoint sp = Database.setSavepoint();
        try {
            PersonaServiceImpl.deletePersona1(request);
        } catch (Exception e) {
            Database.rollback(sp);
            throw new ApplicationException(e.getMessage());
        }
    }

    public static void deletePersona2(DeletePersonaRequest request) {
        Savepoint sp = Database.setSavepoint();
        try {
            PersonaServiceImpl.deletePersona2(request);
        } catch (Exception e) {
            Database.rollback(sp);
            throw new ApplicationException(e.getMessage());
        }
    }

    public static void deletePersona3(DeletePersonaRequest request) {
        Savepoint sp = Database.setSavepoint();
        try {
            PersonaServiceImpl.deletePersona3(request);
        } catch (Exception e) {
            Database.rollback(sp);
            throw new ApplicationException(e.getMessage());
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class CreateConfigRequest implements CopadoServiceRequest {
        public String personaName;
        public String copyFrom;
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class CreateConfigResult implements CopadoServiceResult {
        public PersonaDefinitionConfig personaConfig;
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class CreateRecordRequest implements CopadoServiceRequest {
        public String personaName;
        public String description;
        public PersonaDefinitionConfig personaConfig;
        public Boolean isStandard;
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class CreateRecordResult implements CopadoServiceResult {
        public Persona_Definition__c persona;
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class DeletePersonaRequest implements CopadoServiceRequest {
        public Id personaId;
    }

    /************ CREATE ***********************/

    /************ LICENSE ***********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    public static LicenseService LicenseService {
        get {
            if (LicenseService == null) {
                LicenseService = new LicenseService();
            }
            return LicenseService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Persona Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    public inherited sharing class LicenseService implements CopadoService {
        public void addPackageLicense1(AddLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                AddLicenseServiceImpl.addPackageLicense1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void addCopadoLicense1(AddLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                AddLicenseServiceImpl.addCopadoLicense1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void addPackageLicense2(AddLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                AddLicenseServiceImpl.addPackageLicense2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void addCopadoLicense2(AddLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                AddLicenseServiceImpl.addCopadoLicense2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void removePackageLicense1(RemoveLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                RemoveLicenseServiceImpl.removePackageLicense1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void removeCopadoLicense1(RemoveLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                RemoveLicenseServiceImpl.removeCopadoLicense1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void removePackageLicense2(RemoveLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                RemoveLicenseServiceImpl.removePackageLicense2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void removeCopadoLicense2(RemoveLicenseRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                RemoveLicenseServiceImpl.removeCopadoLicense2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    public with sharing class AddLicenseRequest implements CopadoServiceRequest {
        public Id personaId; // Id of the Persona
        public List<String> licenses; // List of License Names that you want to add
    }

    @JsonAccess(serializable='always' deserializable='always')
    public with sharing class RemoveLicenseRequest implements CopadoServiceRequest {
        public Id personaId; // Id of the Persona
        public List<String> licenses; //List of License Names that you want to remove
    }

    /************ LICENSE ***********************/

    /************ PERMISSION *********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    public static PermissionService PermissionService {
        get {
            if (PermissionService == null) {
                PermissionService = new PermissionService();
            }
            return PermissionService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Persona Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    public inherited sharing class PermissionService implements CopadoService {
        public void add1(AddPermissionRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                AddPermissionServiceImpl.add1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void add2(AddPermissionRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                AddPermissionServiceImpl.add2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void remove1(RemovePermissionRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                RemovePermissionServiceImpl.remove1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void remove2(RemovePermissionRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                RemovePermissionServiceImpl.remove2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    public with sharing class AddPermissionRequest implements CopadoServiceRequest {
        public Id personaId; // Id of the persona
        public List<String> permissionSetGroups; // List of permission set group Names
    }

    @JsonAccess(serializable='always' deserializable='always')
    public with sharing class RemovePermissionRequest implements CopadoServiceRequest {
        public Id personaId; // Id of the persona
        public List<Permission> permissions; // List of permission to remove
    }

    @JsonAccess(serializable='always' deserializable='always')
    public with sharing class Permission {
        public String name;
        public String type;
    }

    /************ PERMISSION ***********************/

    /************ CREDENTIAL ***********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    global static CredentialService CredentialService {
        get {
            if (CredentialService == null) {
                CredentialService = new CredentialService();
            }
            return CredentialService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Persona Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    global inherited sharing class CredentialService implements CopadoService {
        global void share(ShareCredentialRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaCredentialServiceImpl.share(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void remove(RemoveCredentialRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaCredentialServiceImpl.remove(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void updateAccessLevel(UpdateAccessLevelRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaCredentialServiceImpl.updateAccessLevel(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class ShareCredentialRequest implements CopadoServiceRequest {
        global Id personaId;
        global List<Id> credentialIds;
        global String accessLevel; // Valid values: Read, Edit
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class RemoveCredentialRequest implements CopadoServiceRequest {
        global Id personaId;
        global List<Id> credentialIds;
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class UpdateAccessLevelRequest implements CopadoServiceRequest {
        public Id personaId;
        public List<Id> credentialIds;
        public String accessLevel; // Valid values: Read, Edit
    }

    /************ CREDENTIAL ***********************/

    /************ USER ***********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    global static UserService UserService {
        get {
            if (UserService == null) {
                UserService = new UserService();
            }
            return UserService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Persona Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    global inherited sharing class UserService implements CopadoService {
        global void add1(AddUserRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaUserServiceImpl.add1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void add2(AddUserRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaUserServiceImpl.add2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void add3(AddUserRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaUserServiceImpl.add3(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void add4(AddUserRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaUserServiceImpl.add4(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void add5(AddUserRequest request) {
            try {
                PersonaUserServiceImpl.add5(request);
            } catch (Exception ex) {
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void add6(AddUserRequest request) {
            try {
                PersonaUserServiceImpl.add6(request);
            } catch (Exception ex) {
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void remove1(RemoveUserRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaUserServiceImpl.remove1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void remove2(RemoveUserRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaUserServiceImpl.remove2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global void remove3(RemoveUserRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                PersonaUserServiceImpl.remove3(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class AddUserRequest implements CopadoServiceRequest {
        global Id personaId;
        global List<Id> userIds;
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class RemoveUserRequest implements CopadoServiceRequest {
        global Id personaId;
        global List<Id> userIds;
    }

    /************ USER ***********************/

    /************ FEATURE TOGGLE ***********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    public static FeatureToggleService FeatureToggleService {
        get {
            if (FeatureToggleService == null) {
                FeatureToggleService = new FeatureToggleService();
            }
            return FeatureToggleService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Persona Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    public inherited sharing class FeatureToggleService implements CopadoService {
        public void enableFeature1(EnableFeatureRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                EnableFeatureServiceImpl.enableFeature1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void enableFeature2(EnableFeatureRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                EnableFeatureServiceImpl.enableFeature2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void disableFeature1(DisableFeatureRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                DisableFeatureServiceImpl.disableFeature1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        public void disableFeature2(DisableFeatureRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                DisableFeatureServiceImpl.disableFeature2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class EnableFeatureRequest implements CopadoServiceRequest {
        public Id personaId;
        public String featureName;
    }

    @JsonAccess(serializable='always' deserializable='always')
    public inherited sharing class DisableFeatureRequest implements CopadoServiceRequest {
        public Id personaId;
        public String featureName;
    }

    /************ FEATURE TOGGLE ***********************/
}