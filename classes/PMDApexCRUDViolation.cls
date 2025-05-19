public class PMDApexCRUDViolation {
    public Contact pmdApexCRUDViolation(String status, String ID) {

        // validate you can actually query what you intend to retrieve
        Contact c = [SELECT Languages__c FROM Contact WHERE Id=:ID WITH SECURITY_ENFORCED];

        // Make sure we can update the database before even trying
        if (!Schema.sObjectType.Contact.fields.Languages__c.isUpdateable()) {
            return null;
        }

        c.Languages__c = status;
        update c;
        return c;
    }
}