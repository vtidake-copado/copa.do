@IsTest
private with sharing class PersonaUserServiceImplTest {
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
    private static void addUser() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
            request.personaName = PERSONA_NAME;
            Persona.CreateConfigResult result = Persona.createConfig(request);

            Persona.CreateRecordRequest recordRequest = new Persona.CreateRecordRequest();
            recordRequest.personaName = PERSONA_NAME;
            recordRequest.personaConfig = result.personaConfig;
            recordRequest.isStandard = false;
            Persona.CreateRecordResult recordResult = Persona.createRecord(recordRequest);

            Persona.AddUserRequest userRequest = new Persona.AddUserRequest();
            userRequest.personaId = recordResult.persona.Id;
            userRequest.userIds = new List<Id>{ UserInfo.getUserId() };

            PermissionSetGroup permissionSetGroup = [
                SELECT Id
                FROM PermissionSetGroup
                WHERE DeveloperName = :result.personaConfig.getPersonaPermissionSetGroup()
                LIMIT 1
            ];
            Test.calculatePermissionSetGroup(permissionSetGroup.Id);
            // Exercise
            Test.startTest();
            PersonaUserServiceImpl.add1(userRequest);
            PersonaUserServiceImpl.add2(userRequest);
            PersonaUserServiceImpl.add3(userRequest);
            Test.stopTest();

            // Verify
            User updatedUser = [SELECT Id, Persona_Id__c FROM User WHERE Id = :UserInfo.getUserId() LIMIT 1];
            System.assertEquals(recordResult.persona.Id, updatedUser.Persona_Id__c, 'User record should be linked to persona record');
            Boolean userInGroup = [SELECT COUNT() FROM GroupMember WHERE Group.Name = :PERSONA_NAME AND UserOrGroupId = :UserInfo.getUserId()] > 0;
            System.assertEquals(true, userInGroup, 'User should be part of the public group of the persona');
            Boolean permissionSetGroupAssigned =
                [
                    SELECT COUNT()
                    FROM PermissionSetAssignment
                    WHERE
                        PermissionSetGroupId IN (
                            SELECT Id
                            FROM PermissionSetGroup
                            WHERE DeveloperName = :result.personaConfig.getPersonaPermissionSetGroup()
                        )
                        AND AssigneeId = :UserInfo.getUserId()
                ] > 0;
            System.assertEquals(true, permissionSetGroupAssigned, 'Permission Set Group of the persona should be assigned to the user');
        }
    }

    @IsTest
    private static void testCreateCredential() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
            request.personaName = PERSONA_NAME;
            Persona.CreateConfigResult result = Persona.createConfig(request);

            Persona.CreateRecordRequest recordRequest = new Persona.CreateRecordRequest();
            recordRequest.personaName = PERSONA_NAME;
            recordRequest.personaConfig = result.personaConfig;
            recordRequest.isStandard = false;
            Persona.CreateRecordResult recordResult = Persona.createRecord(recordRequest);

            Persona.AddUserRequest userRequest = new Persona.AddUserRequest();
            userRequest.personaId = recordResult.persona.Id;
            userRequest.userIds = new List<Id>{ UserInfo.getUserId() };
             
            // Exercise
            Test.startTest();
            PersonaUserServiceImpl.add4(userRequest);
            Test.stopTest();

            // Verify
            String credentialName = UserInfo.getFirstName() + ' ' + UserInfo.getLastName().substring(0, 1) + ' ' + Label.Credential_Name_Suffix;
            Org__c credential = [SELECT Id, Name FROM Org__c WHERE Name =: credentialName LIMIT 1];
            Assert.isNotNull(credential != null, 'Credential record should be created.');
        }
    }

    @IsTest
    private static void testValidateCredential() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
            request.personaName = PERSONA_NAME;
            Persona.CreateConfigResult result = Persona.createConfig(request);

            Persona.CreateRecordRequest recordRequest = new Persona.CreateRecordRequest();
            recordRequest.personaName = PERSONA_NAME;
            recordRequest.personaConfig = result.personaConfig;
            recordRequest.isStandard = false;
            Persona.CreateRecordResult recordResult = Persona.createRecord(recordRequest);

            Persona.AddUserRequest userRequest = new Persona.AddUserRequest();
            userRequest.personaId = recordResult.persona.Id;
            userRequest.userIds = new List<Id>{ UserInfo.getUserId() };
            PersonaUserServiceImpl.add4(userRequest);
            
            String b = '{"customerOrg":{"Name":"Copado Ltd","orgId":"00Db0000000KFgoEAG","autoRecharge":true,"credits":425,"id":995},"userInfo":{"accessibilityMode__is_set":true,"accessibilityMode":false,"currencySymbol__is_set":true,"currencySymbol":"€","orgAttachmentFileSizeLimit__is_set":true,"orgAttachmentFileSizeLimit":5242880,"orgDefaultCurrencyIsoCode__is_set":true,"orgDefaultCurrencyIsoCode":"EUR","orgDisallowHtmlAttachments__is_set":true,"orgDisallowHtmlAttachments":false,"orgHasPersonAccounts__is_set":true,"orgHasPersonAccounts":false,"organizationId__is_set":true,"organizationId":"00Db0000000KFgoEAG","organizationMultiCurrency__is_set":true,"organizationMultiCurrency":false,"organizationName__is_set":true,"organizationName":"Copado Ltd","profileId__is_set":true,"profileId":"00eb0000000mWB2AAM","roleId__is_set":true,"sessionSecondsValid__is_set":true,"sessionSecondsValid":7200,"userDefaultCurrencyIsoCode__is_set":true,"userEmail__is_set":true,"userEmail":"pr@copado.com","userFullName__is_set":true,"userFullName":"Philipp Rackwitz","userId__is_set":true,"userId":"005b0000000hMqqAAE","userLanguage__is_set":true,"userLanguage":"en_US","userLocale__is_set":true,"userLocale":"en_GB","userName__is_set":true,"userName":"pr@copado.com.basepackage","userTimeZone__is_set":true,"userTimeZone":"Europe/Paris","userType__is_set":true,"userType":"Standard","userUiSkin__is_set":true,"userUiSkin":"Theme3"}}';
            Test.setMock(HttpCalloutMock.class, new testHttpCalloutMock(b, null));
            
            // Exercise
            Test.startTest();
            PersonaUserServiceImpl.add5(userRequest);
            Test.stopTest();

            // Verify
            String credentialName = UserInfo.getFirstName() + ' ' + UserInfo.getLastName().substring(0, 1) + ' ' + Label.Credential_Name_Suffix;
            Org__c credential = [SELECT Id, Name FROM Org__c WHERE Name =: credentialName AND Validated_Date__c != null LIMIT 1];
            Assert.isNotNull(credential != null, 'Credential record should be updated with Validated Date.');
        }
    }

    @IsTest
    private static void testCreateAPIKey() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
            request.personaName = PERSONA_NAME;
            Persona.CreateConfigResult result = Persona.createConfig(request);

            Persona.CreateRecordRequest recordRequest = new Persona.CreateRecordRequest();
            recordRequest.personaName = PERSONA_NAME;
            recordRequest.personaConfig = result.personaConfig;
            recordRequest.isStandard = false;
            Persona.CreateRecordResult recordResult = Persona.createRecord(recordRequest);

            Persona.AddUserRequest userRequest = new Persona.AddUserRequest();
            userRequest.personaId = recordResult.persona.Id;
            userRequest.userIds = new List<Id>{ UserInfo.getUserId() };
            PersonaUserServiceImpl.add4(userRequest);
            
            String b = '{"ok":"API Key generated","api_key":"new key value"}';
            Test.setMock(HttpCalloutMock.class, new testHttpCalloutMock(b, null));
            
            // Exercise
            Test.startTest();
            PersonaUserServiceImpl.add6(userRequest);
            Test.stopTest();

            // Verify
            System.assertEquals('new key value', DeployAPI.getUserAPIKey(), 'API key value must be created.');
        }
    }

    @IsTest
    private static void removeUser() {
        System.runAs(getRunAsUser()) {
            // Setup
            User otherUser = (User) new User_t()
            .admin()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().personaManagement())
            .persist();
        
            Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
            request.personaName = PERSONA_NAME;
            Persona.CreateConfigResult result = Persona.createConfig(request);

            Persona.CreateRecordRequest recordRequest = new Persona.CreateRecordRequest();
            recordRequest.personaName = PERSONA_NAME;
            recordRequest.personaConfig = result.personaConfig;
            recordRequest.isStandard = false;
            Persona.CreateRecordResult recordResult = Persona.createRecord(recordRequest);

            PermissionSetGroup permissionSetGroup = [
                SELECT Id
                FROM PermissionSetGroup
                WHERE DeveloperName = :result.personaConfig.getPersonaPermissionSetGroup()
                LIMIT 1
            ];
            Test.calculatePermissionSetGroup(permissionSetGroup.Id);

            Persona.AddUserRequest userRequest = new Persona.AddUserRequest();
            userRequest.personaId = recordResult.persona.Id;
            userRequest.userIds = new List<Id>{ otherUser.Id };
            PersonaUserServiceImpl.add1(userRequest);
            PersonaUserServiceImpl.add2(userRequest);
            PersonaUserServiceImpl.add3(userRequest);

            // Exercise
            Test.startTest();
            Persona.RemoveUserRequest removeUserRequest = new Persona.RemoveUserRequest();
            removeUserRequest.personaId = recordResult.persona.Id;
            removeUserRequest.userIds = new List<Id>{ otherUser.Id };
            PersonaUserServiceImpl.remove1(removeUserRequest);
            PersonaUserServiceImpl.remove2(removeUserRequest);
            PersonaUserServiceImpl.remove3(removeUserRequest);
            Test.stopTest();

            // Verify
            User updatedUser = [SELECT Id, Persona_Id__c FROM User WHERE Id = :otherUser.Id LIMIT 1];
            System.assertEquals(null, updatedUser.Persona_Id__c, 'User record should not be linked to persona record');
            Boolean userInGroup = [SELECT COUNT() FROM GroupMember WHERE Group.Name = :PERSONA_NAME AND UserOrGroupId = :otherUser.Id] > 0;
            System.assertEquals(false, userInGroup, 'User should not be part of the public group of the persona');
            Boolean permissionSetGroupAssigned =
                [
                    SELECT COUNT()
                    FROM PermissionSetAssignment
                    WHERE
                        PermissionSetGroupId IN (SELECT Id FROM PermissionSetGroup WHERE DeveloperName = :PERSONA_NAME)
                        AND AssigneeId = :otherUser.Id
                ] > 0;
            System.assertEquals(false, permissionSetGroupAssigned, 'Permission Set Group of the persona should not be assigned to the user');
        }
    }

    @IsTest
    private static void removeAdminUser() {
        System.runAs(getRunAsUser()) {
            // Setup
            Persona.CreateConfigRequest request = new Persona.CreateConfigRequest();
            request.personaName = PERSONA_NAME;
            Persona.CreateConfigResult result = Persona.createConfig(request);

            Persona.CreateRecordRequest recordRequest = new Persona.CreateRecordRequest();
            recordRequest.personaName = PERSONA_NAME;
            recordRequest.personaConfig = result.personaConfig;
            recordRequest.isStandard = false;
            Persona.CreateRecordResult recordResult = Persona.createRecord(recordRequest);

            PermissionSetGroup permissionSetGroup = [
                SELECT Id
                FROM PermissionSetGroup
                WHERE DeveloperName = :result.personaConfig.getPersonaPermissionSetGroup()
                LIMIT 1
            ];
            Test.calculatePermissionSetGroup(permissionSetGroup.Id);

            Persona.AddUserRequest userRequest = new Persona.AddUserRequest();
            userRequest.personaId = recordResult.persona.Id;
            userRequest.userIds = new List<Id>{ UserInfo.getUserId() };
            PersonaUserServiceImpl.add1(userRequest);
            PersonaUserServiceImpl.add2(userRequest);
            PersonaUserServiceImpl.add3(userRequest);

            // Exercise
            Test.startTest();
            String exceptionMessage;
            try{
                Persona.RemoveUserRequest removeUserRequest = new Persona.RemoveUserRequest();
                removeUserRequest.personaId = recordResult.persona.Id;
                removeUserRequest.userIds = new List<Id>{ UserInfo.getUserId() };
                PersonaUserServiceImpl.remove1(removeUserRequest);
            }
            catch(Exception ex){
                exceptionMessage = ex.getMessage();
            }
            Test.stopTest();

            // Verify
            System.assertEquals(Label.Remove_Admin_User_Error, exceptionMessage, 'User can\'t be removed from persona.');
        }
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'System Administrator' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Id getPersonaDefinition() {
        return [SELECT Id FROM Persona_Definition__c LIMIT 1].Id;
    }

    private static List<Org__c> getCredentials() {
        return [SELECT Id FROM Org__c];
    }
}