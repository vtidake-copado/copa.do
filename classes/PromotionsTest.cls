@isTest
private class PromotionsTest {
    private final static String NULL_POINTER_EXCEPTION = 'Attempt to de-reference a null object';

    @TestSetup
    private static void setupData() {
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
        }
    }

    @IsTest
    private static void calculationsServiceForwardPromotionsException() {
        System.runAs(getUser()) {
            Exception expectedException;
            Promotions.CalculationServiceResult expectedResult;

            // Exercise
            Test.startTest();
            try {
                expectedResult = Promotions.CalculationService.calculateForwardPromotions(null);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            System.assertEquals(null, expectedResult, 'Response should be null');
            System.assertNotEquals(null, expectedException, 'An exception should be thrown');
            System.assertEquals(NULL_POINTER_EXCEPTION, expectedException.getMessage(), 'Exception message should match');
        }
    }

    @IsTest
    private static void calculationsServiceBackPromotionsException() {
        System.runAs(getUser()) {
            Exception expectedException;
            Promotions.CalculationServiceResult expectedResult;

            // Exercise
            Test.startTest();
            try {
                expectedResult = Promotions.CalculationService.calculateBackwardPromotions(null);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            System.assertEquals(null, expectedResult, 'Response should be null');
            System.assertNotEquals(null, expectedException, 'An exception should be thrown');
            System.assertEquals(NULL_POINTER_EXCEPTION, expectedException.getMessage(), 'Exception message should match');
        }
    }

    @IsTest
    private static void calculationsServiceOutOfSyncBackPromotionsException() {
        System.runAs(getUser()) {
            Exception expectedException;
            Promotions.CalculationServiceResult expectedResult;

            // Exercise
            Test.startTest();
            try {
                expectedResult = Promotions.CalculationService.calculateOutOfSyncBackwardPromotions(null);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            System.assertEquals(null, expectedResult, 'Response should be null');
            System.assertNotEquals(null, expectedException, 'An exception should be thrown');
            System.assertEquals(NULL_POINTER_EXCEPTION, expectedException.getMessage(), 'Exception message should match');
        }
    }

    @IsTest
    private static void metadataServiceException() {
        System.runAs(getUser()) {
            Exception expectedException;
            Promotions.MetadataServiceResult expectedResult;

            // Exercise
            Test.startTest();
            try {
                expectedResult = Promotions.MetadataService.retrieve(null);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            System.assertEquals(null, expectedResult, 'Response should be null');
            System.assertNotEquals(null, expectedException, 'An exception should be thrown');
            System.assertEquals(NULL_POINTER_EXCEPTION, expectedException.getMessage(), 'Exception message should match');
        }
    }

    @IsTest
    private static void userStoryCommitServiceException() {
        System.runAs(getUser()) {
            Exception expectedException;
            Promotions.UserStoryCommitServiceResult expectedResult;

            // Exercise
            Test.startTest();
            try {
                expectedResult = Promotions.UserStoryCommitService.retrieve(null);
            } catch (Exception ex) {
                expectedException = ex;
            }
            Test.stopTest();

            // Verify
            System.assertEquals(null, expectedResult, 'Response should be null');
            System.assertNotEquals(null, expectedException, 'An exception should be thrown');
            System.assertEquals(NULL_POINTER_EXCEPTION, expectedException.getMessage(), 'Exception message should match');
        }
    }

    private static User getUser() {
        return [SELECT Id, Email FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }
}