@isTest
private with sharing class OverviewAssignedCopadoLicensesCtrlTest {
    @IsTest
    public static void testGetUserLicenses() {
        // Create a Copado License custom setting record for testing
        Copado_License__c cl = new Copado_License__c(
            Name = 'Test',
            Enable_ADD__c = true,
            Enable_CAD__c = false,
            Enable_CCH__c = true,
            Enable_CCM__c = false,
            Enable_Copado__c = true,
            Enable_CST__c = false
        );
        insert cl;
        
        // Call the method being tested
        List<String> result = OverviewAssignedCopadoLicensesController.getUserLicenses();
        
        // Assert that the method returns the expected values
        Assert.areEqual(3, result.size());
        Assert.areEqual(System.Label.Data_Deployer, result[0]);
        Assert.areEqual(System.Label.Compliance_Hub, result[1]);
        Assert.areEqual(System.Label.Copado_Admin, result[2]);
    }
}