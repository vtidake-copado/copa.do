public inherited sharing class InvocableGeneratePreFetchedVolume {
    public class InvocableVariables {
        @InvocableVariable(label='Git Repository Id' required=true)
        public String repoId;
        @InvocableVariable(label='Pipeline Id' required=true)
        public String pipelineId;
        @InvocableVariable(label='Number of Volumes' required=false)
        public Integer numberOfVolumes;
        @InvocableVariable(label='Volume Config' required=false)
        public String volumeConfig;
    }


    @InvocableMethod(label='Generate Pre-Fetched Volume')
    public static void execute(List<InvocableVariables> variables) {
        assertInput(variables[0]);
        Savepoint sp = Database.setSavepoint();

        try {
            
            System_Property__c systemProperty = new System_Property__c();
            systemProperty.API_Name__c = 'PreFetchedRepository';
            systemProperty.Name = 'PreFetchedRepository';
            systemProperty.Pipeline__c = variables[0].pipelineId;
            systemProperty.Value__c = variables[0].volumeConfig;
            systemProperty.Is_Public__c = true;

            DML.safeInsert(systemProperty, '');

            if(!prefetchFunctionExists()) {
                PrefechVolume.createPrefetchFunction();
            }

            PrefechVolume.addPreFetchVolumeStepsOnActionTemplates(variables[0].pipelineId, new List<String> { 'Commit', 'Promotion', 'PromotionDeployment'});

            new GeneratePreFetchedVolume(variables[0].repoId, variables[0].pipelineId).execute();
        } catch (Exception ex) {
            Database.rollback(sp);
            throw new ApplicationException(ex.getMessage());
        }
    }


    private static Boolean prefetchFunctionExists() {
        List<Function__c> result = [SELECT Id FROM Function__c WHERE API_Name__c = 'create_prefetched_volume' WITH USER_MODE];

        return !result.isEmpty();
    }

	private static void assertInput(InvocableGeneratePreFetchedVolume.InvocableVariables input) {
        Map<String, Object> valueMap = (Map<String, Object>) JSON.deserializeUntyped(input.volumeConfig);

        Integer TWO_HOURS = 7200;
        Integer TWENTY_FOUR_HOURS = 86400;

        Integer ttl = (Integer) valueMap.get('ttl');
        Integer volumeSize = (Integer) valueMap.get('volumeSize');
        Integer volumeAmount = (Integer) valueMap.get('volumeAmount');
        List<InvocableGetPrefetchedVolumeLimit.PreFetchLimit> limits = InvocableGetPrefetchedVolumeLimit.execute();

        if(volumeSize < 2 || volumeSize > 24) {
            throw new ApplicationException('Storage size is out of range. Supported values are 2 GB to 24 GB.');
        }

        if(ttl < TWO_HOURS || ttl > TWENTY_FOUR_HOURS) {
            throw new ApplicationException('Expiration time is out of range. Supported values are 2 Hrs to 24 Hrs.');
        }

        if(volumeAmount < 1 || volumeAmount > limits[0].availableVolumes) {
            throw new ApplicationException('Amount of pre-cloned workers exceeds the limits available in the organization, Supported values are 1 to ' + limits[0].availableVolumes + ' workers.');
        }
    }
}