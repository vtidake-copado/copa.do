@IsTest
public class Package_t extends DomainBuilder {
    public Package_t() {
        super(Artifact__c.SObjectType);
    }

    public Package_t name(String name) {
        return (Package_t) set(Artifact__c.Name, name);
    }

    public Package_t pipelineId(Id pipelineId) {
        return (Package_t) set(Artifact__c.Pipeline__c, pipelineId);
    }

    public Package_t pipeline(Pipeline pipeline) {
        setParent(Artifact__c.Pipeline__c, pipeline);
        return this;
    }

    public Package_t repositoryId(Id repositoryId) {
        return (Package_t) set(Artifact__c.Artifact_Repository__c, repositoryId);
    }

    public Package_t repository(Repository repository) {
        setParent(Artifact__c.Artifact_Repository__c, repository);
        return this;
    }

    public Package_t packageType(String packageType) {
        return (Package_t) set(Artifact__c.Package_Type__c, packageType);
    }

    public Package_t recordTypeId(Id recordTypeId) {
        return (Package_t) set(Artifact__c.RecordTypeId, recordTypeId);
    }

    public Package_t recordTypeName(String recordType) {
        return (Package_t) recordType(recordType);
    }

    public Package_t packageArtifactRecordType() {
        return recordTypeId(SObjectType.Artifact__c.getRecordTypeInfosByDeveloperName().get('Package_Artifact').getRecordTypeId());
    }

    public Package_t add(PackageVersion version) {
        return (Package_t) version.setParent(Artifact_Version__c.Artifact__c, this);
    }

    public Package_t targetDevHub(Credential value) {
        setParent(Artifact__c.Target_Dev_Hub_Org__c, value);
        return this;
    }

    public Package_t sourceApiVersion(String value) {
        return (Package_t) set(Artifact__c.Source_Api_Version__c, value);
    }

    public Package_t noNamespace(Boolean value) {
        return (Package_t) set(Artifact__c.No_Namespace__c, value);
    }
}