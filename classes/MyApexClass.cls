public class MyApexClass {
    @future
    public static void myMethod(Id accountId) {
        // Wait for 5 minutes
        Long startTime = System.currentTimeMillis();
        while (System.currentTimeMillis() - startTime < 5 * 60 * 1000) {
            // Wait
        }
        
        // Update the Account record
        Account acct = new Account(Id = accountId, Status__c = 'Inactive');
        update acct;
    }
}