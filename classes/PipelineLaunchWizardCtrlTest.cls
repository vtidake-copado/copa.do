@IsTest
private with sharing class PipelineLaunchWizardCtrlTest {
    @TestSetup
    private static void setup() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t().assign(new PermissionSetAssignment_t().copadoUser()).persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData();
        }
    }

    @IsTest
    private static void testGetPipelineData() {
        System.runAs(getRunAsUser()) {
            //Setup
            Id pipelineId = getPipeline();
            ExtensionKeyValueSettingsSelector.mock = new List<ExtensionKeyValueSetting__mdt>{
                new ExtensionKeyValueSetting__mdt(
                    Extension__r = new ExtensionPackageConfiguration__mdt(Platform__c = 'Other'),
                    Key__c = PipelineLaunchWizardCtrl.PIPELINE_BUILDER_PAGE,
                    Value__c = 'MyPage'
                )
            };

            //Exercise
            Test.startTest();
            PipelineLaunchWizardCtrl.PipelineLaunchWizardData data = PipelineLaunchWizardCtrl.getPipelineData(pipelineId);
            Test.stopTest();

            //Verify
            Assert.areNotEqual(null, data.pipeline, 'Pipeline should be returned');
            Assert.areEqual(true, data.hasConnections, 'The pipeline should have connections');
            Assert.areEqual(0, data.stages.size(), 'No stages should be returned');
            Assert.areEqual('MyPage', data.pipelineBuilderPage, 'The page defined in the settings should be returned');
        }
    }

    @IsTest
    private static void testGetFieldSetData() {
        System.runAs(getRunAsUser()) {
            //Exercise
            Test.startTest();
            PipelineLaunchWizardCtrl.FieldSetData data = PipelineLaunchWizardCtrl.getFieldsFromFieldSet(Settings.ns + 'Additional_Information');
            Test.stopTest();

            //Verify
            Assert.areNotEqual(null, data.description, 'Fieldset description should be returned');
        }
    }

    @IsTest
    private static void validateUserPermissions() {
        System.runAs(getRunAsUser()) {
            // Exercise
            Test.startTest();
            Boolean userHasPermission = PipelineLaunchWizardCtrl.validateUserPermissions();
            Test.stopTest();

            // Verify
            System.assertEquals(true, userHasPermission, 'User should have permission');
        }
    }

    @IsTest
    private static void validateRepository() {
        System.runAs(getRunAsUser()) {
            // Exercise
            Test.startTest();
            Boolean isValid = PipelineLaunchWizardCtrl.validateRepository(getRepository());
            Test.stopTest();

            // Verify
            System.assertEquals(false, isValid, 'Repository should not be authenticated.');
        }
    }

    @IsTest
    private static void validateProject() {
        System.runAs(getRunAsUser()) {
            // Exercise
            Test.startTest();
            Boolean isValid = PipelineLaunchWizardCtrl.validateProject(getProject());
            Test.stopTest();

            // Verify
            System.assertEquals(false, isValid, 'Project should not be valid, as it is already linked to a pipeline.');
        }
    }

    private static void createData() {
        Credential source = new Credential();
        new Pipeline()
            .mainBranch('main')
            .setPlatform('Other')
            .add(
                new Connection(
                        new Environment().name('dev1').platform('Other').add(source),
                        new Environment().platform('Other').add(new Credential())
                    )
                    .branch('dev1')
            )
            .add(
                new Connection(new Environment().platform('Other').add(new Credential()), new Environment().platform('Other').add(new Credential()))
                    .branch('dev2')
            )
            .add(new Project().add(new UserStory().credential(source)))
            .persist();

        Git_Repository__c thisGitRepository = new Git_Repository__c();
        thisGitRepository.Name = 'Test pipeline manager DF1';
        thisGitRepository.URI__c = 'git@gitlab.com:copadodev/devtest1.git';
        insert thisGitRepository;
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Id getPipeline() {
        return [SELECT Id FROM Deployment_Flow__c LIMIT 1].Id;
    }

    private static Id getRepository() {
        return [SELECT Id FROM Git_Repository__c LIMIT 1].Id;
    }

    private static Id getProject() {
        return [SELECT Id FROM Project__c LIMIT 1].Id;
    }
}