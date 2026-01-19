public class AccountOperations {
    public static Account setDefaultDescription(Account a) {
        a.Description = 'Default description';
        //Verify 61.0.0 Regression rollback
        return a;
    }
}