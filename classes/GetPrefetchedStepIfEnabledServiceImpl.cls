public inherited sharing class GetPrefetchedStepIfEnabledServiceImpl {
    public static Jobs.ExecutionStep execute(Jobs.GetPrefetchedStepIfEnabledRequest request){

        if(request == null || String.isBlank(request.pipelineId)){
            return null;
        }

        System_Property__c[] sps = [SELECT Id FROM System_Property__c WHERE Pipeline__c = :request.pipelineId AND API_Name__c = 'PreFetchedRepository' WITH USER_MODE LIMIT 1];
        return sps == null || sps.size() < 1
            ? null 
            :  new Jobs.ExecutionStep( new JobStep__c[]{PrefechVolume.asPrefetchStep(request.pipelineId)},'before')
        ;
    }
}