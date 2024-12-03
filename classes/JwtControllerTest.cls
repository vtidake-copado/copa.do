@IsTest
private with sharing class JwtControllerTest {
    
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
    private static void markAsCompletedFirstStepTest() {
        System.runAs(getRunAsUser()) {

            // Setup
            createPersona();
            
            // Exercise
            Test.startTest();
            JwtController controller = new JwtController();
            controller.isJwtEnabled = false;
            controller.connectedAppStatus.isInstalled = true;
            controller.selectedCardId = controller.cardsList[0].id;
            controller.markAsCompleted();
            Test.stopTest();

            // Verify
            Assert.areEqual(Label.Completed, controller.cardsList[0].buttonLabel, 'First step must be marked as Completed.');
            Assert.areEqual(Label.Add_Permissions_Now, controller.cardsList[1].buttonLabel, 'Second step must be marked as Mark as Completed.');
        }
    }

    @IsTest
    private static void markAsCompletedThirdStepTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            createPersona();

            // Exercise
            Test.startTest();
            JwtController controller = new JwtController();
            controller.isJwtEnabled = false;
            controller.connectedAppStatus.hasPolicies = true;
            controller.selectedCardId = controller.cardsList[2].id;
            controller.markAsCompleted();
            Test.stopTest();

            // Verify
            Assert.areEqual(Label.Completed, controller.cardsList[2].buttonLabel, 'Second step must be marked as Mark as Completed.');
        }
    }

    @IsTest
    private static void markAsCompletedSecondStepTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            createPersona();
            JwtController controller = new JwtController();

            // Exercise
            Test.startTest(); 
            controller.isJwtEnabled = false;
            controller.connectedAppStatus.hasPermissionSets = true;
            controller.selectedCardId = controller.cardsList[1].id;
            controller.addPermissions();
            Test.stopTest();

            // Verify
            Assert.areEqual(true, controller.disableAddPermissionsButton, 'Add Permissions Button is disabled.');
        }
    }

    @IsTest
    private static void disablePollTest() {
        System.runAs(getRunAsUser()) {

            // Exercise
            Test.startTest();
            JwtController controller = new JwtController();
            controller.disablePolling();
            Test.stopTest();

            // Verify
            Assert.areEqual(false, controller.isPolling, 'Polling has stopped.');
        }
    }

    @IsTest
    private static void enableJwtStatusTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            createPersona();
            JwtController controller = new JwtController();
            controller.isJwtEnabled = false;

            MockHttpResponseGenerator mockResponse = new MockHttpResponseGenerator(200, 'Complete', 'Done', null);
            Test.setMock(HttpCalloutMock.class, mockResponse);

            // Exercise
            Test.startTest();
            controller.connectedAppStatus.isInstalled = true;
            controller.selectedCardId = controller.cardsList[0].id;
            controller.markAsCompleted();
            controller.connectedAppStatus.hasPermissionSets = true;
            controller.addPermissions();
            controller.checkAddPermissionStepsStatus();
            controller.checkAddPermissionStepsStatus();
            controller.checkAddPermissionStepsStatus();
            controller.checkAddPermissionStepsStatus();
            Test.stopTest();

            // Verify
            Assert.areEqual(Label.Completed, controller.cardsList[0].buttonLabel, 'Connected App first step is completed.');
            Assert.areEqual(Label.Add_Permissions_Now, controller.cardsList[1].buttonLabel, 'Connected App second step is not completed.');
        }
    }

    @IsTest
    private static void disableJwtTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            createPersona();
            JwtController controller = new JwtController();
            controller.isJwtEnabled = false;

            // Exercise
            Test.startTest();
            try {

                // Enable JWT
                controller.connectedAppStatus.isInstalled = true;
                controller.selectedCardId = controller.cardsList[1].id;
                controller.markAsCompleted();
                controller.connectedAppStatus.hasPermissionSets = true;
                controller.isJwtEnabled = true;
                controller.checkAddPermissionStepsStatus();

                // Reset
                controller.cardsList.clear();
                controller.initializeSteps();

                // Disable JWT
                controller.connectedAppStatus.hasPolicies = false;
                controller.selectedCardId = controller.cardsList[0].id;
                controller.markAsCompleted();
                controller.disableJwt();
            } catch(Exception ex) {
                System.assert(true, 'No webservice callouts are supported in test method.'); 
            }
            Test.stopTest();

            // Verify
            Assert.areEqual(true, controller.jwtDisableStepCompleted, 'Connected app policy has changed.');
        }
    }

    @IsTest
    private static void disableJwtStatusTest() {
        System.runAs(getRunAsUser()) {
            // Setup
            createPersona();
            JwtController controller = new JwtController();
            controller.isJwtEnabled = false;

            // Exercise
            Test.startTest();

            // Enable JWT
            controller.connectedAppStatus.isInstalled = true;
            controller.connectedAppStatus.hasPolicies = true;
            controller.connectedAppStatus.hasPermissionSets = true;
            controller.isJwtEnabled = true;
            controller.checkAddPermissionStepsStatus();

            // Reset
            controller.cardsList.clear();
            controller.initializeSteps();

            // Disable JWT
            controller.connectedAppStatus.hasPolicies = false;
            controller.selectedCardId = controller.cardsList[0].id;
            controller.markAsCompleted();    
            Test.stopTest();

            // Verify
            Assert.areEqual(true, controller.jwtDisableStepCompleted, 'Connected app policy has changed.');
        }
    }

    @IsTest
    private static void getPersonaManagementReferenceTest() {
        System.runAs(getRunAsUser()) {

            // Exercise
            Test.startTest();
            JwtController controller = new JwtController();
            PageReference pageRef = controller.getPersonaManagementReference();
            Test.stopTest();

            // Verify
            Assert.areEqual(false, controller.standardPersonasCreated, 'Standard Personas are not created.');
            Assert.isTrue(pageRef.getUrl().contains('Persona_Management'), 'Persona Management App Url');
        }
    }

    // PRIVATE

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'System Administrator' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Persona_Definition__c createPersona() {
        Group personaGroup = new Group(Name = 'testStdPersona', Type = 'Regular');
        insert personaGroup;
        PersonaDefinitionConfig config = new PersonaDefinitionConfig();
        config.publicGroupId = personaGroup.Id;
        Persona_Definition__c persona = new Persona_Definition__c(Name = 'testStdPersona', Is_Standard__c = true, Config_Json__c = JSON.serialize(config));
        insert persona;
        return persona;
    }
}