@SuppressWarnings('PMD.AvoidGlobalModifier,PMD.PropertyNamingConventions')
// VariableNamingConventions: needed for Skeleton Attributes, as we are using a name starting by uppercase
global inherited sharing class Promotions implements CopadoDomain {
    /************ USER STORY CALCULATION ***********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    global static CalculationService CalculationService {
        get {
            if (CalculationService == null) {
                CalculationService = new CalculationService();
            }
            return CalculationService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Promotions Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    global inherited sharing class CalculationService implements CopadoService {
        global CalculationServiceResult calculateForwardPromotions(CalculationServiceRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return CalculationServiceImpl.calculateForwardPromotions(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global CalculationServiceResult calculateBackwardPromotions(CalculationServiceRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return CalculationServiceImpl.calculateBackwardPromotions(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }

        global CalculationServiceResult calculateOutOfSyncBackwardPromotions(CalculationServiceRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return CalculationServiceImpl.calculateOutOfSyncBackwardPromotions(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class CalculationServiceRequest implements CopadoServiceRequest {
        global Id pipelineId; // Id of the pipeline record
        global Id environmentId; // Id of the environment record that you want to calculate user story counts ahead or behind
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class CalculationServiceResult implements CopadoServiceResult {
        global Set<Id> userStoryIds; // Set of user story ids that ahead or behind
    }

    /************ USER STORY CALCULATION ***********************/

    /************ USER STORY METADATA ***********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    global static MetadataService MetadataService {
        get {
            if (MetadataService == null) {
                MetadataService = new MetadataService();
            }
            return MetadataService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Promotions Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    global inherited sharing class MetadataService implements CopadoService {
        global MetadataServiceResult retrieve(MetadataServiceRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return MetadataServiceImpl.retrieve(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class MetadataServiceRequest implements CopadoServiceRequest {
        global Set<Id> userStoryIds; // Set of user story ids
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class MetadataServiceResult implements CopadoServiceResult {
        global List<User_Story_Metadata__c> userStoryMetadatas; // List of user story metadata records for given user story ids
    }

    /************ USER STORY METADATA ***********************/

    /************ USER STORY COMMIT ***********************/

    //SKELETON Attribute
    // Parameter name starts with a capital letter for execution signature to look like static execution.
    global static UserStoryCommitService UserStoryCommitService {
        get {
            if (UserStoryCommitService == null) {
                UserStoryCommitService = new UserStoryCommitService();
            }
            return UserStoryCommitService;
        }
        set;
    }

    /*
        SENSITIVE CLASS
        - Changes in this class will potentially impact many usages and use cases.
        - Please get an architect approval before changing this class.
        - [TDD] If the change is approved please start by creating a Unit test for your change first.
        - When the change is done execute the Promotions Domain test suite not just your test.
        - If the new test is not included in the test suite, make sure to add it.
        - Pull request for changes happened in this class must contain an architect approval.
    */

    global inherited sharing class UserStoryCommitService implements CopadoService {
        global UserStoryCommitServiceResult retrieve(UserStoryCommitServiceRequest request) {
            Savepoint sp = Database.setSavepoint();
            try {
                return UserStoryCommitServiceImpl.retrieve(request);
            } catch (Exception ex) {
                Database.rollback(sp);
                throw new ApplicationException(ex.getMessage());
            }
        }
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class UserStoryCommitServiceRequest implements CopadoServiceRequest {
        global Set<Id> userStoryIds; // Set of user story ids
    }

    @JsonAccess(serializable='always' deserializable='always')
    global inherited sharing class UserStoryCommitServiceResult implements CopadoServiceResult {
        global List<User_Story_Commit__c> userStoryCommits; // List of user story commit records for given user story ids
    }

    /************ USER STORY COMMIT ***********************/
}