public with sharing class ScheduleTestServiceImpl implements Schedulable {

    private Actions.ScheduleTestRequest request;
    private Scheduled_Job__c job;

    //CTOR
    public ScheduleTestServiceImpl(Actions.ScheduleTestRequest request) {
        this.request = request;
        setJob(request.scheduledJobId);
    }

    //PUBLIC 

    public void execute(SchedulableContext sc) {
        Actions.RunTestService.execute(request);
    }

    public ScheduleTestServiceImpl updateJob(String apexJobId){
        job.Apex_Job_ID__c = apexJobId;
        Database.update(job, true, AccessLevel.USER_MODE);
        return this;
    }

    public Actions.ScheduleTestResult getResult(){
        Actions.ScheduleTestResult result = new Actions.ScheduleTestResult();
        result.scheduledJob = job;
        return result;
    }

    //PRIVATE

    private void setJob(Id jobId){
        job = [
            SELECT Name, RecordTypeId, Apex_Job_ID__c, Cron_Expression__c, Test__c
            FROM Scheduled_Job__c
            WHERE Id = :jobId
            WITH USER_MODE
            LIMIT 1
        ];
    }
}