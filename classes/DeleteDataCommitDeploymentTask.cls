@SuppressWarnings('PMD')
public with sharing class DeleteDataCommitDeploymentTask extends DataCommitDeploymentTaskHandler {
    public DeleteDataCommitDeploymentTask(List<User_Story_Data_Commit__c> records) {
        super(records);
    }

    public void execute() {
        Set<Id> deploymentTaskIdsToDelete = new Set<Id>();
        Set<Id> dataSetIdsToDelete = new Set<Id>();
        Set<Id> deploymentStepIdsToDelete = new Set<Id>();

        Map<Id, List<User_Story_Data_Commit__c>> dataCommitsByUserStory = getRecords();
        Map<Id, User_Story__c> userStoryDetailsById = getUserStoryDetailsById(dataCommitsByUserStory.keySet());
        for (Id userStoryId : dataCommitsByUserStory.keySet()) {
            List<User_Story_Data_Commit__c> dataCommitsToDelete = dataCommitsByUserStory.get(userStoryId);

            if (!dataCommitsToDelete.isEmpty()) {
                Boolean isSalesforcePlatform = userStoryDetailsById?.get(userStoryId)?.Platform__c?.equalsIgnoreCase('salesforce');
                if(isSalesforcePlatform == null || isSalesforcePlatform){
                    List<User_Story_Data_Commit__c> remainingDataCommits = getRemainingDataCommits(userStoryId);
                    List<Deployment_Task__c> existingDeploymentTasks = getDeploymentTasks(userStoryId);
                    for (User_Story_Data_Commit__c dataCommitToDelete : dataCommitsToDelete) {
                        Id dataSetId = dataCommitToDelete.Data_Set__c;

                        Deployment_Task__c deploymentTaskForDataSet = getDeploymentTaskForDataSet(existingDeploymentTasks, dataSetId);
                        if (deploymentTaskForDataSet != null) {
                            Boolean deleteTask = !isDataSetInAnotherDataCommit(remainingDataCommits, dataSetId);

                            if (deleteTask) {
                                deploymentTaskIdsToDelete.add(deploymentTaskForDataSet.Id);
                                dataSetIdsToDelete.add(dataSetId);
                            }
                        }
                    }
                } else {
                    List<User_Story_Data_Commit__c> remainingDataCommits = getRemainingDataCommits(userStoryId);
                    List<JobStep__c> existingDeploymentSteps = getDeploymentSteps(userStoryId);
                    for (User_Story_Data_Commit__c dataCommitToDelete : dataCommitsToDelete) {
                        Id dataSetId = dataCommitToDelete.Data_Set__c;
                        JobStep__c deploymentStepForDataSet = getDeploymentStepForDataSet(existingDeploymentSteps, dataSetId);
                        if (deploymentStepForDataSet != null) {
                            Boolean deleteStep = !isDataSetInAnotherDataCommit(remainingDataCommits, dataSetId);
                            if (deleteStep) {
                                deploymentStepIdsToDelete.add(deploymentStepForDataSet.Id);
                                dataSetIdsToDelete.add(dataSetId);
                            }
                        }
                    }
                }
            }
        }

        List<sObject> deploymentTasksToDelete = createDeletionRecords(deploymentTaskIdsToDelete);
        List<sObject> dataSetsToDelete = createDeletionRecords(dataSetIdsToDelete);
        List<sObject> deploymentStepsToDelete = createDeletionRecords(deploymentStepIdsToDelete);

        Utilities.Secure_DML(deploymentTasksToDelete, Utilities.DML_Action.DEL, Schema.SObjectType.Deployment_Task__c);
        Utilities.Secure_DML(dataSetsToDelete, Utilities.DML_Action.DEL, Schema.SObjectType.Data_Set__c);
        Utilities.Secure_DML(deploymentStepsToDelete, Utilities.DML_Action.DEL, Schema.SObjectType.JobStep__c);

    }

    private List<sObject> createDeletionRecords(Set<Id> recordIds) {
        List<sObject> result = new List<sObject>();

        for (Id recordId : recordIds) {
            sObject deletionRecord = recordId.getSobjectType().newSobject(recordId);
            result.add(deletionRecord);
        }

        return result;
    }
}