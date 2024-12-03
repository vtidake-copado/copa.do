@SuppressWarnings('PMD.CognitiveComplexity, PMD.AvoidDeeplyNestedIfStmts')
public virtual with sharing class DataCommitDeploymentTaskHandler {
    
    private static final string DATA_SET_CUSTOM_TYPE = 'Data Set - Salesforce';

    private Map<Id, List<User_Story_Data_Commit__c>> dataCommitsByUserStory;

    private Map<Id, List<Deployment_Task__c>> existingDeploymentTasksByUserStory {
        get {
            if (existingDeploymentTasksByUserStory == null) {
                existingDeploymentTasksByUserStory = new DeploymentTasksSelector().byUserStory(this.dataCommitsByUserStory.keySet());
            }
            return existingDeploymentTasksByUserStory;
        }
        set;
    }

    private Map<Id, List<JobStep__c>> existingDeploymentStepsByUserStory {
        get {
            if (existingDeploymentStepsByUserStory == null) {
                List<JobStep__c> deploymentSteps= new JobStepsSelector().byUserStoryId(this.dataCommitsByUserStory.keySet());
                Map<Id, List<JobStep__c>> deploymentStepsByUserStory = new Map<Id, List<JobStep__c>>();
                for(JobStep__c deploymentStep : deploymentSteps){
                    if(deploymentStep.CustomType__c == DATA_SET_CUSTOM_TYPE){
                        if(!deploymentStepsByUserStory.containsKey(deploymentStep.UserStory__c)){
                            deploymentStepsByUserStory.put(deploymentStep.UserStory__c, new List<JobStep__c>());
                        }
                        deploymentStepsByUserStory.get(deploymentStep.UserStory__c).add(deploymentStep);
                    }
                }
                existingDeploymentStepsByUserStory = deploymentStepsByUserStory;
            }
            return existingDeploymentStepsByUserStory;
        }
        set;
    }

    private Map<Id, List<User_Story_Data_Commit__c>> existingDataCommitsByUserStory {
        get {
            if (existingDataCommitsByUserStory == null) {
                existingDataCommitsByUserStory = new UserStoryDataCommitsSelector().byUserStory(this.dataCommitsByUserStory.keySet());
            }
            return existingDataCommitsByUserStory;
        }
        set;
    }

    private Map<Id, Data_Set__c> dataSetsById {
        get {
            if (dataSetsById == null) {
                Set<Id> dataSetIds = new Set<Id>();
                for (Id userStoryId : this.dataCommitsByUserStory.keySet()) {
                    for (User_Story_Data_Commit__c dataCommit : this.dataCommitsByUserStory.get(userStoryId)) {
                        dataSetIds.add(dataCommit.Data_Set__c);
                    }
                }
                dataSetsById = new Map<Id, Data_Set__c>(new DataSetsSelector().byId(dataSetIds));
            }
            return dataSetsById;
        }
        set;
    }

    public DataCommitDeploymentTaskHandler(List<User_Story_Data_Commit__c> records) {
        this.dataCommitsByUserStory = getDataCommitsByUserStory(records);
    }

    protected Map<Id, List<User_Story_Data_Commit__c>> getRecords() {
        return this.dataCommitsByUserStory;
    }

    protected Map<Id, User_Story__c> getUserStoryDetailsById(Set<Id> userStoryIds){
        return  new UserStoriesSelector().byUserStoryIds(userStoryIds);
    }

    protected List<Deployment_Task__c> getDeploymentTasks(Id userStoryId) {
        return this.existingDeploymentTasksByUserStory.containsKey(userStoryId)
            ? this.existingDeploymentTasksByUserStory.get(userStoryId)
            : new List<Deployment_Task__c>();
    }

    protected List<JobStep__c> getDeploymentSteps(Id userStoryId) {
        return this.existingDeploymentStepsByUserStory?.containsKey(userStoryId)
            ? this.existingDeploymentStepsByUserStory.get(userStoryId)
            : new List<JobStep__c>();
    }

    protected Data_Set__c getDataSet(Id dataSetId) {
        return this.dataSetsById.get(dataSetId);
    }

    protected Deployment_Task__c getDeploymentTaskForDataSet(List<Deployment_Task__c> deploymentTasks, Id dataSetId) {
        Deployment_Task__c result = null;
        for (Deployment_Task__c deploymentTask : deploymentTasks) {
            if (deploymentTask.dataJSON__c != null) {
                DataStepData stepData = (DataStepData) JSON.deserialize(deploymentTask.dataJSON__c, DataStepData.class);
                Id sourceDataSet = stepData.source?.id != null && stepData.source?.id instanceof Id ? stepData.source.Id : null;
                if (sourceDataSet == dataSetId) {
                    result = deploymentTask;
                    break;
                }
            }
        }
        return result;
    }

    protected JobStep__c getDeploymentStepForDataSet(List<JobStep__c> deploymentSteps, Id dataSetId) {
        JobStep__c result = null;
        for (JobStep__c deploymentStep : deploymentSteps) {
            if (deploymentStep.ConfigJson__c != null) {
                ConfigJson configJson = (ConfigJson) JSON.deserialize(deploymentStep.ConfigJson__c, ConfigJson.class);
                for(Parameter param:  configJson.parameters) {
                    if(param.name != 'dataSet'){
                        continue;
                    }
                    Map<String, Object> datasetDetail =  (Map<String, Object>) JSON.deserializeUntyped(param.value);
                    Id sourceDataSet = datasetDetail?.get('dataSetId') != null ? (Id) datasetDetail?.get('dataSetId') : null;
                    if (sourceDataSet == dataSetId) {
                        result = deploymentStep;
                        break;
                    }
                }
            }
        }
        return result;
    }

    protected List<User_Story_Data_Commit__c> getRemainingDataCommits(Id userStoryId) {
        List<User_Story_Data_Commit__c> result = new List<User_Story_Data_Commit__c>(this.existingDataCommitsByUserStory.get(userStoryId));
        List<User_Story_Data_Commit__c> currentDataCommits = this.dataCommitsByUserStory.get(userStoryId);
        for (Integer i = (result.size() - 1); i >= 0; i--) {
            User_Story_Data_Commit__c dataCommit = result.get(i);
            for (User_Story_Data_Commit__c currentDataCommit : currentDataCommits) {
                if (dataCommit.Id == currentDataCommit.Id) {
                    result.remove(i);
                }
            }
        }
        return result;
    }

    protected Boolean isDataSetInAnotherDataCommit(List<User_Story_Data_Commit__c> dataCommits, Id dataSetId) {
        Boolean result = false;
        for (User_Story_Data_Commit__c dataCommit : dataCommits) {
            if (dataCommit.Data_Set__c == dataSetId) {
                result = true;
                break;
            }
        }
        return result;
    }

    private Map<Id, List<User_Story_Data_Commit__c>> getDataCommitsByUserStory(List<User_Story_Data_Commit__c> records) {
        Map<Id, List<User_Story_Data_Commit__c>> dataCommitsByUserStory = new Map<Id, List<User_Story_Data_Commit__c>>();
        for (User_Story_Data_Commit__c userStoryDataCommit : records) {
            Id userStoryId = userStoryDataCommit.User_Story__c;
            if (!dataCommitsByUserStory.containsKey(userStoryId)) {
                dataCommitsByUserStory.put(userStoryId, new List<User_Story_Data_Commit__c>());
            }
            dataCommitsByUserStory.get(userStoryId).add(userStoryDataCommit);
        }
        return dataCommitsByUserStory;
    }

    private class ConfigJson {
        private List<Parameter> parameters;
    }

    private class Parameter {
        public String name;
        public String value;
    }
}