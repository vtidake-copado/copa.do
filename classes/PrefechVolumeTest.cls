@IsTest
private class PrefechVolumeTest {
    
    @TestSetup
    private static void setupData() {
        TestUtilities.getAllMultilicense();
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().functions())
            .persist();

        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
        }
    }

    private static User getUser() {
        return [SELECT Id, Email, Name, LastName, Username FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }

    @isTest
    private static void testAsPrefetchStep(){
        System.runAs(getUser()){
            Test.startTest();
                JobStep__c jStep = PrefechVolume.asPrefetchStep(UserInfo.getUserId());
            Test.stopTest();

            Assert.areEqual('Flow', jStep.Type__c, 'Step Type should be Flow');
            Assert.areEqual('Salesforce Flow', jStep.CustomType__c,'Step Custom Type should be Salesforce Flow');
        }
    }

    @isTest
    private static void testCreatePrefetchFunction(){
        
        System.runAs(getUser()){
            Test.startTest();
                PrefechVolume.createPrefetchFunction();
            Test.stopTest();

            Function__c f = [SELECT Id FROM Function__c where Name = 'create_prefetched_volume' LIMIT 1];
            Assert.isNotNull(f,'Function should be created');
        }
    }

    @isTest
    private static void testAddPreFetchVolumeStepsOnActionTemplates(){
        System.runAs(getUser()){
            Git_Repository__c repository = (Git_Repository__c) new Repository().persist();
            Deployment_Flow__c pipeline = (Deployment_Flow__c) new Pipeline()
                                                                    .repository(repository.Id)
                                                                    .add( new SystemProperty()
                                                                                .apiName('PreFetchedRepository')
                                                                                .value('{ "ttl": 1440, "volumeSize": 5, "volumeAmount": 7 }'))
                                                                    .persist();

            new PipelineAction()
                    .pipeline(pipeline.Id)
                    .action('Commit')
                    .template(new JobTemplate()
                                    .name('Commit')
                                    .add(new JobStep().name('Normal step')));
            new PipelineAction()
                    .pipeline(pipeline.Id)
                    .action('Promotion')
                    .template(new JobTemplate()
                                    .name('Promotion')
                                    .add(new JobStep().name('Normal step')));
            new PipelineAction()
                    .pipeline(pipeline.Id)
                    .action('PromotionDeployment')
                    .template(new JobTemplate()
                                    .name('PromotionDeployment')
                                    .add(new JobStep().name('Normal step')));

            new PipelineAction()
                    .pipeline(pipeline.Id)
                    .action('CreatePackageVersion')
                    .template(new JobTemplate()
                                    .name('CreatePackageVersion')
                                    .add(new JobStep().name('Normal step')))
                    .persist();

            // Exercise
            Test.startTest();
                PrefechVolume.addPreFetchVolumeStepsOnActionTemplates(pipeline.Id, new List<String> { 'Commit', 'Promotion', 'PromotionDeployment'});
            Test.stopTest();

            // Verify
            Assert.areEqual(7, [SELECT count() FROM JobStep__c]);
        }
    }
}