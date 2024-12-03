public with sharing class ResumeExecutionServiceImpl {
    private JobExecution__c job;
    private List<JobStep__c> steps;

    // PUBLIC

    public static Jobs.ExecutionResult execute(Id jobId) {
        return new ResumeExecutionServiceImpl().resume(jobId);
    }


    public Jobs.ExecutionResult resume(Id jobId) {
        JobExecutionsSelector.JobWithStep jobWithSteps = new JobExecutionsSelector().byIdWithSteps(jobId);
        job = jobWithSteps.job;
        steps = jobWithSteps.steps;

        if (job == null) {
            throw new ApplicationException(Label.InvalidExecutionId);
        }

        if (steps.isEmpty()) {
            throw new ApplicationException(String.format(Label.JobHasNoStep, new List<String>{ 'resume' }));
        }

        if (job.Status__c == 'In Progress') {
            throw new ApplicationException(Label.JobInProgress);
        }

        if (!Utilities.checkPermission('Copado_Job_Engine', new Set<Id>{ UserInfo.getUserId() }, false)) {
            String errorMessage = String.format(Label.PermissionSet_InsufficientAccess, new List<String>{ 'Copado Job Engine' });
            new JobEngine(job.Id).finish('Error', errorMessage);

            return new Jobs.ExecutionResult(job.Id);
        }

        clearFailedSteps();

        DML.safeUpdate(
            new JobExecution__c(Id = job.Id, ErrorMessage__c = null, Status__c = 'In Progress'),
            'Could not update a Job Execution object on a Job execution process ( ResumeExecutionServiceImpl.execute class )'
        );

        JobEngine.start(new List<Id>{ job.Id });

        return new Jobs.ExecutionResult(jobId);
    }

    // PRIVATE

    private void clearFailedSteps() {
        List<JobStep__c> stepsToUpdate = new List<JobStep__c>();

        for (JobStep__c step : steps) {
            if (step.Status__c == 'Failed' || step.Status__c == 'Cancelled') {
                stepsToUpdate.add(new JobStep__c(Id = step.Id, Result__c = null, ResultDataJson__c = null));
            }
        }

        DML.safeUpdate(
            stepsToUpdate,
            'Could not update a Job Step object on a Job execution process ( ResumeExecutionServiceImpl.clearFailedSteps class )'
        );
    }
}