@SuppressWarnings('PMD.AvoidHardcodingId')
@isTest
private class TestScheduledJobs {

    @TestSetup
    private static void setupData() {
        User user = (User) new User_t()
            .assign(new PermissionSetAssignment_t().copadoUser())
            .assign(new PermissionSetAssignment_t().functions())
            .assign(new PermissionSetAssignment_t().jobEngine())
            .assign(new PermissionSetAssignment_t().configureAutomations())
            .assign(new PermissionSetAssignment_t().qualityGatesAdmin())
            .persist();
        System.runAs(user) {
            new CopadoLicense().user(user).enableAll().persist();
        }
    }

    @isTest
    static void test(){
        System.runAs(getRunAsUser()) {
            Scheduled_Job__c job = new Scheduled_Job__c(name='test job', webhook_url__c= 'https://xyz.com', run_as_user__c = UserInfo.getUserId(), Delete_Runs_after_days__c=1);
            insert job;
            ApexPages.StandardController std = new ApexPages.StandardController(job);
            ScheduledJobExtension ext = new ScheduledJobExtension(std);
            ext.scheduleJob();
            ext.job.Cron_Expression__c = '0 0 12 ? * MON *';
            ext.saveJob();
            job = [select id,name, apex_job_id__c from Scheduled_Job__c where id = :job.Id];
            System.assertEquals(true, job.Apex_Job_ID__c!=null, 'Check ScheduledJobExtension!');
            ext.stop();
            job = [select id,name, apex_job_id__c from Scheduled_Job__c where id = :job.Id];
            System.assertEquals(true, job.Apex_Job_ID__c==null, 'Check ScheduledJobExtension!');
            System.assertEquals(true, testMethodUtilities.hasMessage(Label.JOB_UNSCHEDULED_SUCCESSFULLY), 'Check ScheduledJobExtension!');
            ext.stop();
            System.assertEquals(true, testMethodUtilities.hasMessage(Label.NOTHING_TO_STOP), 'Check ScheduledJobExtension!');
            
            ext.job.Cron_Expression__c = 'x err 12 ? * exception *';
            ext.saveJob();
            System.assertEquals(true, testMethodUtilities.hasMessage(Label.COULD_NOT_SCHEDULE_JOB), 'Check ScheduledJobExtension!');
            
            ext.deleteJob();
            System.assertEquals(0,[select count() from Scheduled_Job__c where id = :job.Id], 'Check ScheduledJobExtension!');
        }
    }
    
    @isTest
    static void testInvalidJob(){
        System.runAs(getRunAsUser()) {
            Scheduled_Job__c job = new Scheduled_Job__c(name='test job', webhook_url__c= 'https://xyz.com', run_as_user__c = UserInfo.getUserId(), Delete_Runs_after_days__c=1, apex_job_id__c='a0p24000001fABC');
            insert job;
            ApexPages.StandardController std = new ApexPages.StandardController(job);
            ScheduledJobExtension ext = new ScheduledJobExtension(std);
            ext.stop();
            System.assertEquals(true, testMethodUtilities.hasMessage(Label.NO_JOB_FOUND), 'Check ScheduledJobExtension!');
        }
    }
    @isTest
    static void testSchedulable(){
        System.runAs(getRunAsUser()) {
            Scheduled_Job__c job = new Scheduled_Job__c(name='test job', webhook_url__c= 'https://xyz.com', run_as_user__c = UserInfo.getUserId(), Delete_Runs_after_days__c=1);
            insert job;
            Test.startTest();
            ApexPages.StandardController std = new ApexPages.StandardController(job);
            ScheduledJobExtension ext = new ScheduledJobExtension(std);
            ext.scheduleJob();
            ext.job.Cron_Expression__c = '0 0 12 ? * MON *';
            ext.saveJob();
            job = [select id,name, apex_job_id__c from Scheduled_Job__c where id = :job.Id];
            System.assertEquals(true, job.Apex_Job_ID__c!=null, 'Check ScheduledJobExtension!');
            Test.stopTest();
        }
    }

    private static User getRunAsUser() {
        return [SELECT Id FROM User WHERE Profile.Name = 'Standard User' ORDER BY CreatedDate DESC LIMIT 1];
    }
}