@IsTest
private class EnableJWTSettingImplTest {

    private static final String PERMISSION_SET_LABEL = 'Copado Governance Org Credential Access';
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
        }
    }

    @IsTest
    private static void createPermissionsTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            String permissionSetName = PERMISSION_SET_LABEL.replaceAll('[^a-zA-Z0-9]+', '_') + '_PS';
            String permissionSetGroupName = PERMISSION_SET_LABEL.replaceAll('[^a-zA-Z0-9]+', '_');

            // Exercise
            Test.startTest();
            Feature.JWTSettingStatusResult result = Feature.JWTSetting.createPermissions();
            Test.stopTest();

            // Verify
            Assert.isNotNull(result, 'The result is null');
            Assert.areEqual([SELECT Id FROM PermissionSet WHERE Name = :permissionSetName].Id, result.permissionSetId, 'The Permission Set Id does not match');
            Assert.areEqual([SELECT Id FROM PermissionSetGroup WHERE DeveloperName = :permissionSetGroupName].Id, result.permissionSetGroupId, 'The Permission Set Group Id does not match');
        }
    }

    @IsTest
    private static void assignPermissionToConnectedAppTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            Feature.JWTSettingStatusRequest request = new Feature.JWTSettingStatusRequest();
            request.permissionSetId = [SELECT Id FROM PermissionSet LIMIT 1].Id;

            // Exercise
            Test.startTest();
            Feature.JWTSettingStatusResult result = Feature.JWTSetting.assignPermissionToConnectedApp(request);
            Test.stopTest();

            // Verify
            Assert.isNotNull(result, 'The result is null');
            Assert.areEqual(request.permissionSetId, result.permissionSetId, 'The Id does not match');
        }
    }

    @IsTest
    private static void assignPermissionToPersonas1Test() {
        System.runAs(getRunAsUser()) {
            // Setup
            createPersona(PERSONA_NAME);
            Feature.JWTSettingStatusRequest request = new Feature.JWTSettingStatusRequest();
            request.permissionSetGroupId = createPermissionSetGroup();

            // Exercise
            Boolean jobIsSuccess = false;
            Test.startTest();
            try {
                Feature.JWTSetting.assignPermissionToPersonas1(request);
                jobIsSuccess = true;
            } catch (Exception e) {
                jobIsSuccess = false;
            }
            Test.stopTest();

            // Verify
            Assert.isTrue(jobIsSuccess, 'Error in adding permission');
        }
    }

    @IsTest
    private static void assignPermissionToPersonas2Test() {
        System.runAs(getRunAsUser()) {
            // Setup
            createPersona(PERSONA_NAME);
            Feature.JWTSettingStatusRequest request = new Feature.JWTSettingStatusRequest();
            request.permissionSetGroupId = createPermissionSetGroup();

            // Exercise
            Boolean jobIsSuccess = false;
            Test.startTest();
            try {
                Feature.JWTSetting.assignPermissionToPersonas2(request);
                jobIsSuccess = true;
            } catch (Exception e) {
                jobIsSuccess = false;
            }
            Test.stopTest();

            // Verify
            Assert.isTrue(jobIsSuccess, 'Error in adding permission');
        }
    }

    @IsTest
    private static void assignPermissionToExistingUsersTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            Feature.JWTSettingStatusRequest request = new Feature.JWTSettingStatusRequest();
            request.permissionSetGroupId = createPermissionSetGroup();

            // Exercise
            Test.startTest();
            Feature.JWTSettingStatusResult result = Feature.JWTSetting.assignPermissionToExistingUsers(request);
            Test.stopTest();

            // Verify
            Assert.isNotNull(result, 'The response is null');
        }
    }

    @IsTest
    private static void executeTest() {
        User user = getRunAsUser();
        System.runAs(user) {
            // Setup
            Feature.JWTSettingStatusRequest request = new Feature.JWTSettingStatusRequest();
            request.userIds = new List<Id>{ user.Id };

            MockHttpResponseGenerator mockResponse = new MockHttpResponseGenerator(200, 'Complete', 'Done', null);
            Test.setMock(HttpCalloutMock.class, mockResponse);

            // Exercise
            Test.startTest();
            Feature.JWTSettingStatusResult result = Feature.JWTSetting.execute(request);
            Test.stopTest();

            // Verify
            Assert.isNotNull(result, 'The result is null');
        }
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'System Administrator' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Persona_Definition__c createPersona(String name) {
        Group personaGroup = new Group(Name = name, Type = 'Regular');
        insert personaGroup;
        PersonaDefinitionConfig config = new PersonaDefinitionConfig();
        config.publicGroupId = personaGroup.Id;
        Persona_Definition__c persona = new Persona_Definition__c(Name = name, Config_Json__c = JSON.serialize(config));
        insert persona;
        return persona;
    }

    private static Id createPermissionSetGroup() {
        String permissionSetGroupName = PERMISSION_SET_LABEL.replaceAll('[^a-zA-Z0-9]+', '_') + 'TestClass';
        PermissionSetGroup permissionSetGroup = new PermissionSetGroup(DeveloperName = permissionSetGroupName, MasterLabel = PERMISSION_SET_LABEL + 'TestClass');

        insert permissionSetGroup;
        return permissionSetGroup.Id;
    }
}