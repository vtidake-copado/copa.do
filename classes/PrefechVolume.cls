public with sharing class PrefechVolume {

    // PRIVATE METHDOS

    private static String getScript() {
        String result = 'mkdir -p /app/repository  \n' 
        + 'cd /app/repository  \n' 
        + 'git config --global core.preloadindex true || true \n' 
        + 'git config --global checkout.workers 8 || true \n'
        + 'git config --global core.checkStat minimal || true \n' 
        + 'git config --global core.trustctime true || true \n' 
        + 'echo $branches \n' 
        + '# fetch all branches and silently ignore in case the remote branch does not exists \n'
        + 'for branch in ${branches//,/ } \n' 
        + 'do \n' 
        + '    time copado-git-get $branch || true \n' 
        + 'done \n' 
        + 'RESULT_JSON=$(cat <<-END \n' 
        + '{ \n' 
        +   '"volumeId": "${volumeId}", \n' 
        +   '"settingId": "${settingId}" \n' 
        + '} \n' 
        + 'END ) \n' 
        + 'git config --local core.preloadindex true || true \n' 
        + 'git config --local checkout.workers 8 || true \n' 
        + 'git config --local core.checkStat minimal || true \n' 
        + 'git config --local core.trustctime true || true \n' 
        + 'copado -p "Finished" --result-data "$RESULT_JSON"';
        return result;
    }

    private static Set<String> getTemplatesWithPrefechStep(List<Pipeline_Action__c> actions) {
        Set<String> result = new Set<String>();

        Set<Id> templateIds = new Set<Id>();
        for(Pipeline_Action__c action : actions) {
            templateIds.add(action.Job_Template__c);
        }

        for(JobStep__c step : [SELECT Id, JobTemplate__c FROM JobStep__c WHERE JobTemplate__c IN :templateIds AND Name = 'Use Prefetched Volume' WITH USER_MODE]) {
            result.add(step.JobTemplate__c);
        }

        return result;
	}

    // PUBLIC MEtHODS

    public static JobStep__c asPrefetchStep(Id templateId) {
        String flowName = String.isNotBlank(Settings.ns) ? 'copado.Add_Pre_fetched_volume' : 'Add_Pre_fetched_volume';
        JobStep__c result = new JobStep__c();
        result.Order__c = 0;
        result.Type__c = 'Flow';
        result.JobTemplate__c = templateId;
        result.Name = 'Use Prefetched Volume';
        result.CustomType__c = 'Salesforce Flow';
        result.ConfigJson__c = '{"flowName":"' + flowName + '","parameters":[]}';

        return result;
	}

    public static void createPrefetchFunction() {
        fflib_SObjectDomain.getTriggerEvent(Functions.class).disableAll();

        insert as user new Function__c(
            Name = 'create_prefetched_volume'
            ,API_Name__c = 'create_prefetched_volume'
            ,Type__c = 'Standard'
            ,Worker_Size__c = 'M'
            ,Callback_Type__c = 'ApexClass'
            ,ApexClass__c = String.isNotBlank(Settings.ns) ? 'copado.GeneratePreFetchedVolume' : 'GeneratePreFetchedVolume'
            ,Image_Name__c = 'copado-function-core:v1'
            ,Description__c = 'A generic function to prefetch and initiate a Git Repository'
            ,Parameters__c = '[ { "required" : true, "name" : "git_json", "defaultValue" : "{$Context.Repository.Credential}" }, { "name" : "volumeId", "defaultValue" : "" }, { "name" : "settingId", "defaultValue" : "" }, {"name" : "branches", "defaultValue" : "{$Context.Apex.PipelineBranches}"} ]'
            ,Script__c = getScript()
        );

        fflib_SObjectDomain.getTriggerEvent(Functions.class).enableAll();
	}

    public static void addPreFetchVolumeStepsOnActionTemplates(Id pipelineId, List<String> actionNames) {
        List<Pipeline_Action__c> actions = [SELECT Id, Job_Template__c, Action__c, Pipeline__c FROM Pipeline_Action__c where Pipeline__c = :pipelineId AND Action__c IN :actionNames WITH USER_MODE];

        Set<String> templatesWithPrefechStep = getTemplatesWithPrefechStep(actions);


        List<JobStep__c> prefetchVolumeSteps = new List<JobStep__c>();

        for(Pipeline_Action__c action : actions) {
            if(templatesWithPrefechStep.contains(action.Job_Template__c) != true) {
                templatesWithPrefechStep.add(action.Job_Template__c);
                prefetchVolumeSteps.add(PrefechVolume.asPrefetchStep(action.Job_Template__c));
            }
        }

        fflib_SObjectDomain.getTriggerEvent(JobStepTrigger.class).disableAll();
        fflib_SObjectDomain.getTriggerEvent(JobTemplateTrigger.class).disableAll();
        
        DML.insertAsSystem(prefetchVolumeSteps, '');

        fflib_SObjectDomain.getTriggerEvent(JobStepTrigger.class).enableAll();
        fflib_SObjectDomain.getTriggerEvent(JobTemplateTrigger.class).enableAll();
	}    
}