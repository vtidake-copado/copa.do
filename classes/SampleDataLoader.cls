public with sharing class SampleDataLoader {

    public static void insertEnv() {
        Git_Repository__c gitRepo = createGitRepository();
        insert gitRepo;
        
        List<Environment__c> environments = createEnvironments(20);

        List<Org__c> orgs = new List<Org__c>();
        for (Integer i=0;i<19;i++) {
            Org__c o = createOrgCredentials('Test', environments[i].Id, 'Production/Developer');
            orgs.add(o);
        }
        insert orgs;

        Deployment_Flow__c pipeline = createDeploymentFlow('Test Pipeline', true, gitRepo.Id, false);
        insert pipeline;

        List<Deployment_Flow_Step__c> deploymentStep = new List<Deployment_Flow_Step__c>();
        for (Integer i=0;i<19;i++) {
            Deployment_Flow_Step__c dfs = createDeploymentFlowStep(environments[i].Id, environments[i+1].Id, pipeline.Id, '');
            deploymentStep.add(dfs);
        }
        insert deploymentStep;

        List<Environmental_Variable__c> environmentalVariable = new List<Environmental_Variable__c>();
        for(Integer j=0;j<57;j++){
            for(Integer k=0; k<19; k++) {
                Environmental_Variable__c ev = createEnvironmentVariable('Test'+k, 'admin@test.com'+k, 'object/*; classes/ QSS_InspectionXmlImportService.cls', environments[k].Id);
                environmentalVariable.add(ev);
            }
        }
        insert environmentalVariable;
    }

    public static Git_Repository__c createGitRepository() {
        Git_Repository__c repo = new Git_Repository__c();
        repo.Name = 'test repo';

        return repo;
    }

    public static List<Environment__c> createEnvironments(Integer count) {
        List<Environment__c> environments = new List<Environment__c>();
        for (Integer i = 0; i < count; i++) {
            Environment__c environment = new Environment__c();
            environment.Name = 'Environment ' + i;
            environment.Index_Back_Promotion_metadata__c = true;
            environment.Type__c = 'Production/Developer';
            environment.Platform__c = 'Salesforce';

            environments.add(environment);
        }

        insert environments;

        return environments;
    }

    public static Org__c createOrgCredentials(String userName, String environmentId, String orgType) {
        Org__c org = new Org__c();
        org.Name = 'Test Org ' + environmentId;
        org.Org_Type__c = orgType;
        org.Username__c = userName + environmentId;
        org.Environment__c = environmentId;
        org.Oauth_Signature__c = 'signature';
        org.Validated_Date__c = System.now();

        return org;
    }
    public static Deployment_Flow__c createDeploymentFlow(String name, Boolean isActive, String gitRepositoryId, Boolean enableDX) {
        // NOPMD : Supressing rule to avoid large refactor.
        Deployment_Flow__c deploymentFlow = new Deployment_Flow__c();
        deploymentFlow.Name = name;
        deploymentFlow.Active__c = isActive;
        deploymentFlow.Git_Repository__c = gitRepositoryId;
        deploymentFlow.Enable_Copado_DX__c = enableDX;

        return deploymentFlow;
    }

    public static Deployment_Flow_Step__c createDeploymentFlowStep( // NOPMD : Supressing rule to avoid large refactor.
        String sourceEnvironmentId,
        String destinationEnvironmentId,
        String deploymentFlowId,
        String scratchOrgDestination
    ) {
        Deployment_Flow_Step__c deploymentFlowStep = new Deployment_Flow_Step__c();
        deploymentFlowStep.Source_Environment__c = sourceEnvironmentId;
        deploymentFlowStep.Destination_Environment__c = destinationEnvironmentId;
        deploymentFlowStep.Deployment_Flow__c = deploymentFlowId;
        deploymentFlowStep.Enable_as_Scratch_Org_Destination__c = scratchOrgDestination;

        return deploymentFlowStep;
    }

    public static Environmental_Variable__c createEnvironmentVariable(String name, String value, String scope, String envId) {
        Environmental_Variable__c environmentVariable = new Environmental_Variable__c();
        environmentVariable.Name = name;
        environmentVariable.Value__c = value;
        environmentVariable.Scope__c = scope;
        environmentVariable.Environment__c = envId;

        return environmentVariable;
    }
}