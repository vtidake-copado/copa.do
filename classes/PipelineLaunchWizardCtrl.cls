public with sharing class PipelineLaunchWizardCtrl {
    @TestVisible
    private static final String PIPELINE_BUILDER_PAGE = 'PipelineBuilderPage';
    private static final String RELEASE_MANAGER_PERSONA = 'Release Manager';

    // PUBLIC

    @AuraEnabled
    public static Boolean validateUserPermissions() {
        List<Copado_License__c> licenses = [
            SELECT Enable_Copado__c
            FROM Copado_License__c
            WHERE SetupOwnerId = :UserInfo.getUserId()
            WITH SYSTEM_MODE
            LIMIT 1
        ];

        return (!licenses.isEmpty() && licenses[0].Enable_Copado__c) || hasReleaseManagerPersonaAssigned();
    }

    @AuraEnabled
    public static Boolean validateRepository(String repositoryId) {
        DeployAPI.validateGitResult validation = !Test.isRunningTest() ? DeployAPI.validateGit(repositoryId) : mockResult();
        return validation.success;
    }

    @AuraEnabled
    public static Boolean validateProject(String projectId) {
        List<Project__c> projects = [SELECT Deployment_Flow__c FROM Project__c WHERE Id = :projectId WITH USER_MODE LIMIT 1];
        return !projects.isEmpty() && projects[0].Deployment_Flow__c == null;
    }

    @SuppressWarnings('PMD.EagerlyLoadedDescribeSObjectResult')
    @AuraEnabled
    public static FieldSetData getFieldsFromFieldSet(String fieldSet) {
        FieldSetData result = new FieldSetData();
        Schema.FieldSet pipelineFieldSet = fflib_SObjectDescribe.getDescribe(SObjectType.Deployment_Flow__c.getName())
            .getDescribe()
            .fieldSets.getMap()
            .get(fieldSet);
        result.label = pipelineFieldSet.getLabel();
        result.name = pipelineFieldSet.getName();
        result.description = pipelineFieldSet.getDescription();
        result.fields = new List<FieldSetMemberData>();

        for (FieldSetMember field : pipelineFieldSet.getFields()) {
            FieldSetMemberData fieldSetMemberData = new FieldSetMemberData();
            fieldSetMemberData.name = field.getFieldPath();
            fieldSetMemberData.label = field.getLabel();
            result.fields.add(fieldSetMemberData);
        }

        return result;
    }

    @AuraEnabled
    public static PipelineLaunchWizardData getPipelineData(Id pipelineId) {
        PipelineLaunchWizardData result = new PipelineLaunchWizardData();
        Deployment_Flow__c pipeline = getPipeline(pipelineId);
        result.stages = getStages();
        result.pipeline = pipeline;
        result.hasConnections = pipeline?.Deployment_Flow_Steps__r?.size() > 0;
        result.hasStageConnections = pipeline?.Pipeline_Stages__r?.size() > 0;
        result.pipelineBuilderPage = getPipelineBuilderPage(pipeline?.Platform__c);
        result.gitRepositoryId = pipeline.Git_Repository__c;
        return result;
    }

    // PRIVATE

    private static Deployment_Flow__c getPipeline(Id pipelineId) {
        List<Deployment_Flow__c> pipelines = [
            SELECT
                Id,
                Name,
                Platform__c,
                Main_Branch__c,
                Git_Repository__c,
                (SELECT Id FROM Deployment_Flow_Steps__r),
                (SELECT Id FROM Pipeline_Stages__r)
            FROM Deployment_Flow__c
            WHERE Id = :pipelineId
            WITH USER_MODE
        ];
        return !pipelines.isEmpty() ? pipelines[0] : null;
    }

    private static List<Stage__c> getStages() {
        Set<String> stageNames = new Set<String>{ 'Development', 'Testing', 'Production' };
        return [SELECT Id, Name, Display_Name__c, Meta_Stage__c FROM Stage__c WHERE Display_Name__c IN :stageNames WITH USER_MODE];
    }

    private static String getPipelineBuilderPage(String platform) {
        List<ExtensionKeyValueSetting__mdt> pipelineBuilderSettings = new ExtensionKeyValueSettingsSelector()
            .byPlatformAndKey(platform, PIPELINE_BUILDER_PAGE);
        return !pipelineBuilderSettings.isEmpty() ? pipelineBuilderSettings[0].Value__c : null;
    }

    private static Boolean hasReleaseManagerPersonaAssigned() {
        Boolean result = false;
        User user = [SELECT Id, Persona_Id__c FROM User WHERE Id = :UserInfo.getUserId() WITH SYSTEM_MODE];

        if (String.isNotBlank(user.Persona_Id__c)) {
            List<Persona_Definition__c> personaDefinitions = [
                SELECT Id, Name
                FROM Persona_Definition__c
                WHERE Id = :user.Persona_Id__c AND Name = :RELEASE_MANAGER_PERSONA
                WITH USER_MODE
            ];
            result = !personaDefinitions.isEmpty();
        }

        return result;
    }

    private static DeployAPI.ValidateGitResult mockResult() {
        DeployAPI.ValidateGitResult resultEmpty = new DeployAPI.ValidateGitResult();
        resultEmpty.success = false;
        resultEmpty.message = Label.DeployAPI_no_privileges_git_repo;
        return resultEmpty;
    }

    public with sharing class PipelineLaunchWizardData {
        @AuraEnabled
        public Deployment_Flow__c pipeline;
        @AuraEnabled
        public Boolean hasConnections;
        @AuraEnabled
        public Boolean hasStageConnections;
        @AuraEnabled
        public List<Stage__c> stages;
        @AuraEnabled
        public String pipelineBuilderPage;
        @AuraEnabled
        public String gitRepositoryId;
    }

    public with sharing class FieldSetData {
        @AuraEnabled
        public String description;
        @AuraEnabled
        public String label;
        @AuraEnabled
        public String name;
        @AuraEnabled
        public List<FieldSetMemberData> fields;
    }

    public with sharing class FieldSetMemberData {
        @AuraEnabled
        public String label;
        @AuraEnabled
        public String name;
    }
}