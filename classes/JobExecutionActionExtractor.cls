public with sharing class JobExecutionActionExtractor {
    private static final String RESULT_API_NAME = Schema.Result__c.SObjectType.getDescribe().getName();
    private static final String JOB_STEP_API_NAME = Schema.JobStep__c.SObjectType.getDescribe().getName();

    @InvocableMethod(label='Get Action from Result or Job Step')
    public static List<String> getAction(List<Id> recordIds) {
        if (recordIds.isEmpty()) {
            return new List<String>();
        }

        try {
            String sObjectType = recordIds[0].getSObjectType().getDescribe().getName();
            Map<Id, Id> jobExecutionMap = getJobExecutionMap(recordIds, sObjectType);
            Map<Id, JobExecution__c> jobExecutions = getJobExecutions(jobExecutionMap.values());

            return extractActions(recordIds, jobExecutionMap, jobExecutions);
        } catch (Exception e) {
            return new List<String>(recordIds.size());
        }
    }

    private static Map<Id, Id> getJobExecutionMap(List<Id> recordIds, String sObjectType) {
        Map<Id, Id> jobExecutionMap = new Map<Id, Id>();

        if (sObjectType == RESULT_API_NAME) {
            for (Result__c result : [SELECT Id, JobStep__r.JobExecution__c FROM Result__c WHERE Id IN :recordIds WITH USER_MODE]) {
                if (result.JobStep__r != null && result.JobStep__r.JobExecution__c != null) {
                    jobExecutionMap.put(result.Id, result.JobStep__r.JobExecution__c);
                }
            }
        } else if (sObjectType == JOB_STEP_API_NAME) {
            for (JobStep__c jobStep : [SELECT Id, JobExecution__c FROM JobStep__c WHERE Id IN :recordIds WITH USER_MODE]) {
                if (jobStep.JobExecution__c != null) {
                    jobExecutionMap.put(jobStep.Id, jobStep.JobExecution__c);
                }
            }
        }

        return jobExecutionMap;
    }

    private static Map<Id, JobExecution__c> getJobExecutions(List<Id> jobExecutionIds) {
        if (jobExecutionIds.isEmpty()) {
            return new Map<Id, JobExecution__c>();
        }
        return new Map<Id, JobExecution__c>([SELECT Id, DataJSON__c FROM JobExecution__c WHERE Id IN :jobExecutionIds WITH USER_MODE]);
    }

    private static List<String> extractActions(List<Id> recordIds, Map<Id, Id> jobExecutionMap, Map<Id, JobExecution__c> jobExecutions) {
        List<String> actions = new List<String>();

        for (Id recordId : recordIds) {
            String action = getActionFromJobExecution(jobExecutionMap.get(recordId), jobExecutions);
            actions.add(action);
        }

        return actions;
    }

    private static String getActionFromJobExecution(Id jobExecutionId, Map<Id, JobExecution__c> jobExecutions) {
        if (jobExecutionId == null || !jobExecutions.containsKey(jobExecutionId)) {
            return '';
        }

        JobExecution__c jobExecution = jobExecutions.get(jobExecutionId);
        if (String.isBlank(jobExecution.DataJSON__c)) {
            return '';
        }

        try {
            Map<String, Object> dataMap = (Map<String, Object>) JSON.deserializeUntyped(jobExecution.DataJSON__c);
            return dataMap.containsKey('action') ? String.valueOf(dataMap.get('action')) : '';
        } catch (JSONException e) {
            return '';
        }
    }
}