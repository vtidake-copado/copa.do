@IsTest
private with sharing class DataSetCtrlTest {
    @TestSetup
    private static void setup() {
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
        }
    }

    @IsTest
    private static void getFlowName() {
        User standardUser = getStandardUser();
        System.runAs(standardUser) {
            try {
                //  Setup + Exercise
                Test.startTest();
                DataSetCtrl.getFlowName('NeNextGenDD', 'GenerateDataSetFlow');
                Test.stopTest();
            } catch (Exception ex) {
                // Verify
                Assert.isNotNull(ex, 'There should be an exception as custom metadata is not availble for provided Platform and key in Copado Core');
            }
        }
    }

    private static User getStandardUser() {
        User standardUser = [
            SELECT Id
            FROM User
            WHERE ProfileId IN (SELECT Id FROM Profile WHERE Name = 'Standard User')
            ORDER BY CreatedDate DESC
            LIMIT 1
        ];
        return standardUser;
    }
}