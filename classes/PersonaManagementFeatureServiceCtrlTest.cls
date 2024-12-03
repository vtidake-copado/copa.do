@IsTest
private with sharing class PersonaManagementFeatureServiceCtrlTest {
    private static final String PERSONA_NAME = 'CopadoTestDeveloper';

    @TestSetup
    private static void setup() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .admin()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().personaManagement())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    @IsTest
    private static void getFeatureToggles() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona_Definition__c personaDefinition = getPersona();
            FeatureServiceHelper.mock = MockFeatures.getRecords();

            // Exercise
            Test.startTest();
            PersonaManagementFeatureServiceCtrl.FeatureToggleWrapper result = PersonaManagementFeatureServiceCtrl.getFeatureToggles(
                personaDefinition.Id
            );
            Test.stopTest();

            // Verify
            System.assertNotEquals(null, result, 'Wrapper class should be returned');
        }
    }

    @IsTest
    private static void enableFeature() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona_Definition__c personaDefinition = getPersona();
            FeatureServiceHelper.mock = MockFeatures.getRecords();

            // Exercise
            Test.startTest();
            PersonaManagementFeatureServiceCtrl.enableFeature1(personaDefinition.Id, 'Sample_Feature');
            PersonaManagementFeatureServiceCtrl.enableFeature2(personaDefinition.Id, 'Sample_Feature');
            Test.stopTest();

            // Verify
            Persona_Definition__c updatedPersona = [SELECT Config_Json__c FROM Persona_Definition__c WHERE Id = :personaDefinition.Id LIMIT 1];
            PersonaDefinitionConfig config = (PersonaDefinitionConfig) JSON.deserialize(updatedPersona.Config_JSON__c, PersonaDefinitionConfig.class);
            System.assertEquals(1, config.features.size(), 'Feature should be added to the persona');
        }
    }

    @IsTest
    private static void disableFeature() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona_Definition__c personaDefinition = getPersona();
            FeatureServiceHelper.mock = MockFeatures.getRecords();

            // Exercise
            Test.startTest();
            PersonaManagementFeatureServiceCtrl.disableFeature1(personaDefinition.Id, 'Sample_Feature');
            PersonaManagementFeatureServiceCtrl.disableFeature2(personaDefinition.Id, 'Sample_Feature');
            Test.stopTest();

            // Verify
            Persona_Definition__c updatedPersona = [SELECT Config_Json__c FROM Persona_Definition__c WHERE Id = :personaDefinition.Id LIMIT 1];
            PersonaDefinitionConfig config = (PersonaDefinitionConfig) JSON.deserialize(updatedPersona.Config_JSON__c, PersonaDefinitionConfig.class);
            System.assertEquals(0, config.features.size(), 'Feature should be removed from the persona');
        }
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'System Administrator' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Persona_Definition__c getPersona() {
        return [SELECT Id, Config_Json__c FROM Persona_Definition__c LIMIT 1];
    }

    private static void createData() {
        Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
        request.personaName = PERSONA_NAME;
        Persona.CreateConfigResult result = Persona.createConfig(request);

        Persona.CreateRecordRequest recordRequest = new Persona.CreateRecordRequest();
        recordRequest.personaName = PERSONA_NAME;
        recordRequest.personaConfig = result.personaConfig;
        recordRequest.isStandard = false;
        Persona.createRecord(recordRequest);
    }
}