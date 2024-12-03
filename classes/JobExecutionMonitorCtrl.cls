public with sharing class JobExecutionMonitorCtrl {
    // PUBLIC

    @AuraEnabled(cacheable=false)
    public static List<Id> getJobIds(Id recordId, String fieldApiName, String jobTemplateApiName) {
        if (recordId == null || String.isBlank(fieldApiName)) {
            throw new AuraHandledException(
                String.format(
                    Label.MissingRequiredParameters,
                    new List<Object>{ String.join(new List<String>{ 'Record Id', 'Job Execution Field Name' }, ', ') }
                )
            );
        }

        List<JobExecution__c> jobExecutions;
        String jobTemplateCondition = '';
        
        if (!String.isBlank(jobTemplateApiName)) {
            jobTemplateCondition = ' AND Template__r.ApiName__c = :jobTemplateApiName';
        }

        try {
            String query = String.format(
                'SELECT Id, Name, Status__c FROM JobExecution__c WHERE {0} = :recordId AND Status__c IN (\'Not Started\', \'In Progress\'){1} WITH SECURITY_ENFORCED',
                new List<String>{ fieldApiName, jobTemplateCondition }
            );
            jobExecutions = Database.query(query);

            if (jobExecutions.isEmpty()) {
                query = String.format(
                    'SELECT Id, Name, Status__c FROM JobExecution__c WHERE {0} = :recordId{1} WITH SECURITY_ENFORCED ORDER BY SystemModstamp DESC LIMIT 1',
                    new List<String>{ fieldApiName, jobTemplateCondition }
                );
                jobExecutions = Database.query(query);
            }
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }

        return new List<Id>(new Map<Id, JobExecution__c>(jobExecutions).keySet());
    }
}