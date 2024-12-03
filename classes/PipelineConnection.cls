@IsTest
public class PipelineConnection extends DomainBuilder {
    public PipelineConnection(Pipeline pip, Environment source, Environment destination) {
        super(Deployment_Flow_Step__c.SObjectType);
        setParent(Deployment_Flow_Step__c.Deployment_Flow__c, pip);
        setParent(Deployment_Flow_Step__c.Source_Environment__c, source);
        setParent(Deployment_Flow_Step__c.Destination_Environment__c, destination);
    }

    public PipelineConnection() {
        super(Deployment_Flow_Step__c.SObjectType);
    }

    public PipelineConnection pipeline(Pipeline value) {
        setParent(Deployment_Flow_Step__c.Deployment_Flow__c, value);
        return this;
    }

    public PipelineConnection sourceEnvironment(Environment value) {
        setParent(Deployment_Flow_Step__c.Source_Environment__c, value);
        return this;
    }
    public PipelineConnection destinationEnvironment(Environment value) {
        setParent(Deployment_Flow_Step__c.Destination_Environment__c, value);
        return this;
    }

    public PipelineConnection destinationBranch(String value) {
        set(Deployment_Flow_Step__c.Destination_Branch__c, value);
        return this;
    }

    public PipelineConnection branch(String value) {
        set(Deployment_Flow_Step__c.Branch__c, value);
        return this;
    }

    public PipelineConnection stageConnection(StageConnection stageConnection) {
        setParent(Deployment_Flow_Step__c.Stage_Connection__c, stageConnection);
        return this;
    }
}