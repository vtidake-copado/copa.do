public with sharing class CancelExecutionServiceImpl {
    private static final String CANCELLED = 'Cancelled';
    private static final String CANCELED = 'Canceled';
    private static final String CANCELLING = 'Cancelling';
    private static final String IN_PROGRESS = 'In Progress';

    // PUBLIC

    public static Jobs.ExecutionResult execute(Id jobId) {
        if (jobId == null) {
            throw new ApplicationException(String.format(Label.MissingRequiredParameters, new List<String>{ 'Job Id' }));
        }

        JobExecutionsSelector.JobWithStep jobWithSteps = new JobExecutionsSelector().byIdWithSteps(jobId);
        JobExecution__c job = jobWithSteps.job;

        if (jobWithSteps.steps.isEmpty()) {
            throw new ApplicationException(String.format(Label.JobHasNoStep, new List<String>{ 'cancel' }));
        }

        // Note: If the job is not in progress, no need to cancel execution
        if (job.Status__c != IN_PROGRESS) {
            return new Jobs.ExecutionResult(jobId);
        }

        JobStep__c current = currentStep(jobWithSteps.steps);
        if (current != null) {
            switch on current?.Type__c {
                when 'Function' {
                    cancelFunction(current);
                }
                when 'Flow' {
                    updateExecutionToCanceled(jobId);
                }
                when 'Manual' {
                    cancelManual(current);
                }
                when 'Test' {
                    cancelTest(current);
                }
                when else {
                    throw new ApplicationException(Label.InvalidStepType);
                }
            }
        }

        return new Jobs.ExecutionResult(jobId);
    }

    // PRIVATE

    private static JobStep__c currentStep(List<JobStep__c> steps) {
        for (JobStep__c step : steps) {
            if (step.Status__c == IN_PROGRESS) {
                return step;
            }
        }

        return null;
    }

    private static void cancelManual(JobStep__c step) {
        Result__c stepResult = new ResultsSelector().byJobStepId(step.Id);

        DML.safeUpdate(
            new Result__c(Id = stepResult.Id, Progress_Status__c = CANCELLED, Status__c = CANCELLED),
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{ Result__c.SObjectType.getDescribe().getLabel(), 'CancelExecutionServiceImpl.cancelManual' }
            )
        );

        updateExecutionToCanceled(step.JobExecution__c);
    }

    private static void updateExecutionToCanceled(Id jobId) {
        DML.safeUpdate(
            new JobExecution__c(Id = jobId, Status__c = CANCELED),
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{ JobExecution__c.SObjectType.getDescribe().getLabel(), 'CancelExecutionServiceImpl.updateExecutionToCanceled' }
            )
        );
    }

    private static void cancelTest(JobStep__c step) {
        execute(step.Sub_Job_Execution__c);
        Result__c stepResult = new ResultsSelector().byJobStepId(step.Id);

        DML.safeUpdate(
            new Result__c(Id = stepResult.Id, Progress_Status__c = CANCELLED, Status__c = CANCELLED),
            String.format(
                Label.ErrorWhileUpdating,
                new List<String>{ Result__c.SObjectType.getDescribe().getLabel(), 'CancelExecutionServiceImpl.cancelTest' }
            )
        );

        updateExecutionToCanceled(step.JobExecution__c);
    }

    private static void cancelFunction(JobStep__c step) {
        Result__c stepResult = new ResultsSelector().byJobStepId(step.Id);
        CopadoFunctions.cancel(stepResult.Id);
    }
}