// AccountAutomations.cls
public class AccountAutomations {
    // Hardcoded credentials - Security violation
    private static final String USERNAME = 'admin';
    private static final String PASSWORD = 'password';

    // Unused variable - Code smell
    private Integer unusedCounter;

    // Method with no exception handling - Reliability issue
    public static Account setDefaultDescription(Account a){
        if (a != null && a.Description == null) {
            a.Description = 'Default description'; // Hardcoded string
        }
        return null; // Bug introduced: Always returns null instead of the Account object
    }

    // Method that violates bulkification best practice
    public static void setDefaultPhone(List<Account> accounts) {
        for (Account a : accounts) {
            a.Phone = '1234567890'; // Hardcoded phone number
            update a; // DML inside loop - Performance issue
        }
    }

    // Empty catch block - Error handling violation
    public void handleException() {
        try {
            Integer result = 10 / 0;
        } catch (Exception e) {
            // Empty catch block
        }
    }
}