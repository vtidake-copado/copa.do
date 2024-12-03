@SuppressWarnings('PMD.PropertyNamingConventions, PMD.AvoidGlobalModifier,PMD.CognitiveComplexity')
// PropertyNamingConventions: Needed for Skeleton Attributes, as we are using a name starting by uppercase
// AvoidGlobalModifier: As we want to expose the services as global, thus the modifier

global inherited sharing class Feature implements CopadoDomain {
    /*
        SENSITIVE METHOD
        - Changes in this method will potentially impact many usages and use cases.
        - Please get an architect approval before changing this method.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Feature Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this method must contain an architect approval.
    */
    global static Boolean isCCHEnabled() {
        // Note: not setting savepoint as this service is not writing to database

        try {
            return CheckCCHEnabled.execute();
        } catch (Exception e) {
            throw new ApplicationException(e.getMessage());
        }
    }

    global static Boolean isCCMEnabled() {
        // Note: not setting savepoint as this service is not writing to database

        try {
            return CheckCCMEnabled.execute();
        } catch (Exception ex) {
            throw new ApplicationException(ex.getMessage());
        }
    }

    /*
        SENSITIVE METHOD
        - Changes in this method will potentially impact many usages and use cases.
        - Please get an architect approval before changing this method.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Feature Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this method must contain an architect approval.
    */
    global static Boolean isApplicationRegistered() {
        // Note: not setting savepoint as this service is not writing to database

        try {
            Settings__c orgDefaultSetting = Settings__c.getOrgDefaults();
            return String.isNotBlank(orgDefaultSetting.Server_URL__c);
        } catch (Exception ex) {
            return false;
        }
    }

    /*
        SENSITIVE METHOD
        - Changes in this method will potentially impact many usages and use cases.
        - Please get an architect approval before changing this method.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Feature Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this method must contain an architect approval.
    */
    global static Boolean isAutomateGovOrgEnabled() {
        // Note: not setting savepoint as this service is not writing to database

        try {
            return FeatureManagement.checkPackageBooleanValue('AutomateGovernanceOrg');
        } catch (Exception ex) {
            return false;
        }
    }

    /************ JWT ************/

    // SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    global static JWTSetting JWTSetting {
        get {
            if (JWTSetting == null) {
                JWTSetting = new JWTSetting();
            }
            return JWTSetting;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Feature Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    global inherited sharing class JWTSetting implements CopadoService {

        global JWTSettingStatusResult createPermissions() {
            Savepoint sp = Database.setSavepoint();
            try {
                return EnableJWTSettingImpl.createPermissions();
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global JWTSettingStatusResult assignPermissionToConnectedApp(JWTSettingStatusRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return EnableJWTSettingImpl.assignPermissionToConnectedApp(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        } 

        global JWTSettingStatusResult assignPermissionToPersonas1(JWTSettingStatusRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return EnableJWTSettingImpl.assignPermissionToPersonas1(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global JWTSettingStatusResult assignPermissionToPersonas2(JWTSettingStatusRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return EnableJWTSettingImpl.assignPermissionToPersonas2(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global JWTSettingStatusResult assignPermissionToExistingUsers(JWTSettingStatusRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return EnableJWTSettingImpl.assignPermissionToExistingUsers(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global JWTSettingStatusResult execute(JWTSettingStatusRequest request) {
           try {
                return EnableJWTSettingImpl.execute(request);
            } catch (Exception ex) {
                throw new ApplicationException(ex.getMessage());
            }
        }
   
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class JWTSettingStatusRequest implements CopadoServiceRequest {
        global Id permissionSetId;
        global Id permissionSetGroupId;
        global List<Id> userIds; 
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class JWTSettingStatusResult implements CopadoServiceResult {
        global Id permissionSetId;
        global Id permissionSetGroupId;
        global List<Id> userIds; 
        global Boolean status; // True if Enable JWT API request is successful
    }

    /************ JWT ************/
}