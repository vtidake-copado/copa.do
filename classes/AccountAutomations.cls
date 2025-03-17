// AccountAutomations.cls
public class AccountAutomations {
    public static Account setDefaultDescription(Account a){
        if (a.Description != null) return a;
        else {
            a.Description = 'New default description v3'; // Another change
            return a;
        }
    }
    
    public static Account setDefaultPhone(Account a) {
        a.Phone = '0987654321'; // Additional change
        return a;
    }
}