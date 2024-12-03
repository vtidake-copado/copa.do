public with sharing class OverviewAssignedCopadoLicensesController {
    @AuraEnabled( cacheable = true )
    public static List<String> getUserLicenses () {
        try {
            List<String> listLicenses = new List<String>();

            Copado_License__c cl = Copado_License__c.getInstance();

            // Map of licenses to corresponding labels
            Map<String, String> enableFieldToLabelMap = new Map<String, String>{
                Schema.SObjectType.Copado_License__c.fields.Enable_ADD__c.getLocalName() => System.Label.Data_Deployer,
                Schema.SObjectType.Copado_License__c.fields.Enable_CAD__c.getLocalName() => System.Label.Copado_Guest,
                Schema.SObjectType.Copado_License__c.fields.Enable_CCH__c.getLocalName() => System.Label.Compliance_Hub,
                Schema.SObjectType.Copado_License__c.fields.Enable_CCM__c.getLocalName() => System.Label.Copado_User,
                Schema.SObjectType.Copado_License__c.fields.Enable_Copado__c.getLocalName() => System.Label.Copado_Admin,
                Schema.SObjectType.Copado_License__c.fields.Enable_CST__c.getLocalName() => System.Label.Selenium_Testing
            };

            // Iterate through the map and check conditions dynamically
            for (String enableField : enableFieldToLabelMap.keySet()) {
                if ((Boolean)cl.get(enableField)) {
                    listLicenses.add(enableFieldToLabelMap.get(enableField));
                }
            }

            return listLicenses;
        } catch (Exception e) {
            throw new AuraHandledException( e.getMessage() );
        }
    }
}