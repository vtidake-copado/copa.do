@IsTest
public class BundledStory extends DomainBuilder {
    public BundledStory() {
        super(Bundled_Story__c.SObjectType);
    }

    public BundledStory userStory(UserStory value) {
        setParent(Bundled_Story__c.User_Story__c, value);
        return this;
    }

    public BundledStory packageVersion(PackageVersion value) {
        setParent(Bundled_Story__c.Package_Version__c, value);
        return this;
    }
}