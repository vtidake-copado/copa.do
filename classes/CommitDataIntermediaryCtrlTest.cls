@IsTest
private with sharing class CommitDataIntermediaryCtrlTest {
    @TestSetup
    private static void setup() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().functions())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().executeAutomations())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
            createData(true);
        }
    }

    @IsTest
    static void testDefaultPageAsCommitDataPage() {
        System.runAs(getRunAsUser()) {
            //Setup
            Id userStoryId = getUserStory();

            //Exercise
            Test.startTest();
            String pageName = CommitDataIntermediaryCtrl.getCommitDataPageNameFromSettings(userstoryId);
            Test.stopTest();

            //Verify
            Assert.isNull(pageName, 'default page should be blank');
        }
    }

    @IsTest
    static void testCommitDataPage() {
        System.runAs(getRunAsUser()) {
            //Setup

            Id userStoryId = getUserStory();
            ExtensionKeyValueSettingsSelector.mock = new List<ExtensionKeyValueSetting__mdt>{
                new ExtensionKeyValueSetting__mdt(
                    Extension__r = new ExtensionPackageConfiguration__mdt(Platform__c = CommitDataIntermediaryCtrl.NEXTGEN_DD_PLATFORM),
                    Key__c = CommitDataIntermediaryCtrl.DATA_COMMIT_PAGE,
                    Value__c = 'TestCommitDataPage'
                )
            };

            //Exercise
            Test.startTest();
            String pageName = CommitDataIntermediaryCtrl.getCommitDataPageNameFromSettings(userstoryId);
            Test.stopTest();

            //Verify
            System.assertEquals(pageName, 'TestCommitDataPage', 'the page name should be TestCommitDataPage');
        }
    }

    private static Deployment_Flow__c createData(Boolean createPipelineAction) {
        if (createPipelineAction) {
            new JobTemplate().name('Commit Template').mockAutomation('Commit').add(new JobStep()).persist();
        }

        Credential source = new Credential();

        return (Deployment_Flow__c) new Pipeline()
            .mainBranch('main')
            .setPlatform('SFDX')
            .add(
                new Connection(
                        new Environment().name('dev1').platform('SFDX').add(source),
                        new Environment().platform('SFDX').add(new Credential())
                    )
                    .branch('dev1')
            )
            .add(
                new Connection(new Environment().platform('SFDX').add(new Credential()), new Environment().platform('SFDX').add(new Credential()))
                    .branch('dev2')
            )
            .add(new Project().add(new UserStory().credential(source)))
            .persist();
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    private static Id getUserStory() {
        return [SELECT Id, Platform__c FROM User_Story__c LIMIT 1].Id;
    }
}