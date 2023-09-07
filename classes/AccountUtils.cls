public class AccountUtils {
    public static Boolean isAccountActive(Account acc) {
        if (acc != null) {
            return true; // account is active
        }
        return false;
    }
}