@isTest
private class JobExecutionActionExtractorTest {
    @TestSetup
    private static void setup() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().functions())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().qualityGatesAdmin())
            .assign(new PermissionSetAssignment_t().configureAutomations())
            .assign(new PermissionSetAssignment_t().executeAutomations())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    @IsTest
    static void testGetActionFromResult() {
        System.runAs(getRunAsUser()) {
            // Setup
            Result__c result = [SELECT Id, JobStep__c, JobStep__r.JobExecution__c, JobStep__r.JobExecution__r.DataJSON__c FROM Result__c LIMIT 1];

            // Exercise
            Test.startTest();
            List<String> actions = JobExecutionActionExtractor.getAction(new List<Id>{ result.Id });
            Test.stopTest();

            // Verify
            System.assertEquals(1, actions.size(), 'Should return one action');
            System.assertEquals('TestAction', actions[0], 'Action should match the one in DataJSON');
        }
    }

    @IsTest
    static void testGetActionFromJobStep() {
        System.runAs(getRunAsUser()) {
            // Setup
            JobStep__c jobStep = [SELECT Id FROM JobStep__c LIMIT 1];

            // Exercise
            Test.startTest();
            List<String> actions = JobExecutionActionExtractor.getAction(new List<Id>{ jobStep.Id });
            Test.stopTest();

            // Verify
            System.assertEquals(1, actions.size(), 'Should return one action');
            System.assertEquals('TestAction', actions[0], 'Action should match the one in DataJSON');
        }
    }

    @IsTest
    static void testGetActionWithEmptyList() {
        System.runAs(getRunAsUser()) {
            // Exercise
            Test.startTest();
            List<String> actions = JobExecutionActionExtractor.getAction(new List<Id>());
            Test.stopTest();

            // Verify
            System.assertEquals(0, actions.size(), 'Should return an empty list');
        }
    }

    @IsTest
    static void testGetActionWithInvalidId() {
        System.runAs(getRunAsUser()) {
            // Setup
            Id invalidId = getFakeId(Result__c.SObjectType);

            // Exercise
            Test.startTest();
            List<String> actions = JobExecutionActionExtractor.getAction(new List<Id>{ invalidId });
            Test.stopTest();

            // Verify
            System.assertEquals(1, actions.size(), 'Should return one action');
            System.assertEquals('', actions[0], 'Action should be empty string for invalid ID');
        }
    }

    @IsTest
    static void testGetActionWithNullDataJSON() {
        System.runAs(getRunAsUser()) {
            // Setup
            JobExecution__c jobExecution = [SELECT Id FROM JobExecution__c LIMIT 1];
            jobExecution.DataJSON__c = null;
            update jobExecution;

            JobStep__c jobStep = [SELECT Id FROM JobStep__c LIMIT 1];

            // Exercise
            Test.startTest();
            List<String> actions = JobExecutionActionExtractor.getAction(new List<Id>{ jobStep.Id });
            Test.stopTest();

            // Verify
            System.assertEquals(1, actions.size(), 'Should return one action');
            System.assertEquals('', actions[0], 'Action should be empty string for null DataJSON');
        }
    }

    @IsTest
    static void testGetActionWithMissingActionKey() {
        System.runAs(getRunAsUser()) {
            // Setup
            JobExecution__c jobExecution = [SELECT Id FROM JobExecution__c LIMIT 1];
            jobExecution.DataJSON__c = '{"someOtherKey": "SomeValue"}';
            update jobExecution;

            JobStep__c jobStep = [SELECT Id FROM JobStep__c LIMIT 1];

            // Exercise
            Test.startTest();
            List<String> actions = JobExecutionActionExtractor.getAction(new List<Id>{ jobStep.Id });
            Test.stopTest();

            // Verify
            System.assertEquals(1, actions.size(), 'Should return one action');
            System.assertEquals('', actions[0], 'Action should be empty string when action key is missing');
        }
    }

    // HELPERS

    private static void createData() {
        new JobExecution()
            .dataJson('{"action": "TestAction"}')
            .add(new JobStep().executionSequence('before').order(1).add(new Result().status('Not Started')))
            .persist();
    }

    private static Id getFakeId(Schema.SObjectType sot) {
        String result = String.valueOf(sot.getDescribe().getKeyPrefix());
        String suffix = '0'.repeat(12);
        return Id.valueOf(result + suffix);
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }
}