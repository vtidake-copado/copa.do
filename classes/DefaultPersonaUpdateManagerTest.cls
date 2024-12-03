@isTest
private class DefaultPersonaUpdateManagerTest {
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
    private static void checkForDefaultPersonaUpdates() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona_Definition__c personaDefinition = new Persona_Definition__c(
                Name = 'TestPersona',
                Config_JSON__c = '{"permissionSets":[{"name":"TestPSGPS","isStandard":true}],"permissionSetGroups":[{"name":"TestPSG","isStandard":true}],"licenses":[{"name":"TestLicense","isStandard":true}],"defaultCredentialAccessLevel":"TestAccessLevel"}'
            );
            insert personaDefinition;

            DefaultPersonaUpdateManager manager = new DefaultPersonaUpdateManager();
            DateTime currentDateTime = System.now();
            DefaultPersonaUpdateManager.mock = mockPersonas(currentDateTime);

            // Exercise
            Test.startTest();

            List<String> personasToUpdate = manager.checkForUpdates();
            Test.stopTest();

            // Verify
            System.assertEquals(false, personasToUpdate.isEmpty(), 'Updates were flagged as needed.');
        }
    }

    @IsTest
    private static void applyDefaultPersonaUpdates() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona_Definition__c personaDefinition = new Persona_Definition__c(
                Name = 'TestPersona',
                Config_JSON__c = '{"permissionSets":[{"name":"TestPSGPS","isStandard":true}],"permissionSetGroups":[{"name":"TestPSG","isStandard":true}],"licenses":[{"name":"TestLicense","isStandard":true}],"defaultCredentialAccessLevel":"TestAccessLevel"}'
            );
            insert personaDefinition;

            DefaultPersonaUpdateManager manager = new DefaultPersonaUpdateManager();
            DateTime currentDateTime = System.now();
            DefaultPersonaUpdateManager.mock = mockPersonas(currentDateTime);

            // Exercise
            Test.startTest();
            DefaultPersonaUpdateManager.ApplyUpdatesResult result = manager.applyUpdates(DefaultPersonaUpdateManager.mock[0].MasterLabel);
            Test.stopTest();

            // Verify
            System.assertNotEquals(null, result.defaultPersonaToCreate, 'New Personas are added.');
        }
    }

    @IsTest
    private static void checkForDescriptionUpdated() {
        System.runAs(getRunAsUser()) {
            // Setup
            DateTime currentDateTime = System.now();
            Persona_Definition__c personaDefinition1 = new Persona_Definition__c(
                Name = 'DefaultPersonaTest1 ' + currentDateTime,
                Description__c = 'DefaultPersonaTest1',
                Config_JSON__c = '{"permissionSets":[{"name":"TestPSGPS","isStandard":true}],"permissionSetGroups":[{"name":"TestPSG","isStandard":true}],"licenses":[{"name":"TestLicense","isStandard":true}],"defaultCredentialAccessLevel":"TestAccessLevel"}'
            );
            Persona_Definition__c personaDefinition2 = new Persona_Definition__c(
                Name = 'DefaultPersonaTest2 ' + currentDateTime,
                Description__c = 'DefaultPersonaTest2',
                Config_JSON__c = '{"permissionSets":[{"name":"TestPSGPS","isStandard":true}],"permissionSetGroups":[{"name":"TestPSG","isStandard":true}],"licenses":[{"name":"TestLicense","isStandard":true}],"defaultCredentialAccessLevel":"TestAccessLevel"}'
            );
            insert new List<Persona_Definition__c>{ personaDefinition1, personaDefinition2 };

            DefaultPersonaUpdateManager manager = new DefaultPersonaUpdateManager();
            DefaultPersonaUpdateManager.mock = mockPersonas(currentDateTime);

            // Exercise
            Test.startTest();

            List<String> personasToUpdate = manager.checkForUpdates();
            Test.stopTest();

            // Verify
            System.assertEquals(false, personasToUpdate.isEmpty(), 'Updates were flagged as needed.');
        }
    }

    @IsTest
    private static void applyDescriptionUpdated() {
        System.runAs(getRunAsUser()) {
            // Setup
            DateTime currentDateTime = System.now();
            Persona_Definition__c personaDefinition1 = new Persona_Definition__c(
                Name = 'DefaultPersonaTest1 ' + currentDateTime,
                Description__c = 'DefaultPersonaTest1',
                Config_JSON__c = '{"permissionSets":[{"name":"TestPSGPS","isStandard":true}],"permissionSetGroups":[{"name":"TestPSG","isStandard":true}],"licenses":[{"name":"TestLicense","isStandard":true}],"defaultCredentialAccessLevel":"TestAccessLevel"}'
            );
            Persona_Definition__c personaDefinition2 = new Persona_Definition__c(
                Name = 'DefaultPersonaTest2 ' + currentDateTime,
                Description__c = 'DefaultPersonaTest2',
                Config_JSON__c = '{"permissionSets":[{"name":"TestPSGPS","isStandard":true}],"permissionSetGroups":[{"name":"TestPSG","isStandard":true}],"licenses":[{"name":"TestLicense","isStandard":true}],"defaultCredentialAccessLevel":"TestAccessLevel"}'
            );
            insert new List<Persona_Definition__c>{ personaDefinition1, personaDefinition2 };

            DefaultPersonaUpdateManager manager = new DefaultPersonaUpdateManager();
            DefaultPersonaUpdateManager.mock = mockPersonas(currentDateTime);

            // Exercise
            Test.startTest();
            DefaultPersonaUpdateManager.ApplyUpdatesResult result = manager.applyUpdates(DefaultPersonaUpdateManager.mock[0].MasterLabel);
            Test.stopTest();

            // Verify
            System.assertNotEquals(null, result.updatedPersonaDescription, 'Personas definitions are updated.');
        }
    }

    // PRIVATE

    private static void createData() {
        User user = getRunAsUser();
        PermissionSetGroup psg = createPermissionSetGroup('TestPSG', 'TestPSG');
        insert new PermissionSetAssignment(PermissionSetGroupId = psg.Id, AssigneeId = user.Id);
    }

    private static PermissionSetGroup createPermissionSetGroup(String name, String label) {
        PermissionSet ps = new PermissionSet();
        ps.label = label + 'PS';
        ps.name = name + 'PS';
        ps.PermissionsRunFlow = true;
        insert ps;

        ObjectPermissions op = new ObjectPermissions();
        op.parentid = ps.Id;
        op.permissionscreate = true;
        op.permissionsdelete = true;
        op.permissionsedit = true;
        op.permissionsread = true;
        op.sobjecttype = 'pushtopic';
        insert op;

        PermissionSetGroup psg = new PermissionSetGroup();
        psg.developername = name;
        psg.masterlabel = label;
        insert psg;

        PermissionSetGroupComponent psgc = new PermissionSetGroupComponent();
        psgc.PermissionSetGroupId = psg.Id;
        psgc.PermissionSetId = ps.Id;
        insert psgc;

        psg = getPermissionSetGroup(name);

        // force calculation of the PSG if it is not already Updated
        if (psg.Status != 'Updated') {
            Test.calculatePermissionSetGroup(psg.Id);
        }

        return psg;
    }

    private static PermissionSetGroup getPermissionSetGroup(String name) {
        return [SELECT Id, Status FROM PermissionSetGroup WHERE DeveloperName = :name];
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'System Administrator' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static List<Default_Persona__mdt> mockPersonas(DateTime currentDateTime) {
        List<Default_Persona__mdt> result = new List<Default_Persona__mdt>();
        result.add(
            new Default_Persona__mdt(
                MasterLabel = 'DefaultPersonaTest1 ' + currentDateTime,
                DeveloperName = 'DefaultPersonaTest1' + currentDateTime,
                Description__c = 'DefaultPersonaTest1 Description'
            )
        );
        result.add(
            new Default_Persona__mdt(
                MasterLabel = 'DefaultPersonaTest2 ' + currentDateTime,
                DeveloperName = 'DefaultPersonaTest2' + currentDateTime,
                Description__c = 'DefaultPersonaTest2 Description'
            )
        );
        return result;
    }
}