@IsTest
public class PackageVersion extends DomainBuilder {
    public PackageVersion() {
        super(Artifact_Version__c.SObjectType);
    }

    public PackageVersion packageId(Id packageId) {
        return (PackageVersion) set(Artifact_Version__c.Artifact__c, packageId);
    }

    public PackageVersion package(Package_t pkg) {
        setParent(Artifact_Version__c.Artifact__c, pkg);
        return this;
    }

    public PackageVersion versionName(String name) {
        return (PackageVersion) set(Artifact_Version__c.Version_Name__c, name);
    }

    public PackageVersion versionNumber(String versionNumber) {
        return (PackageVersion) set(Artifact_Version__c.Version_number__c, versionNumber);
    }

    public PackageVersion name(String value) {
        return (PackageVersion) set(Artifact_Version__c.Name, value);
    }

    public PackageVersion versionId(Id value) {
        return (PackageVersion) set(Artifact_Version__c.Subscriber_Version_Id__c, value);
    }
}