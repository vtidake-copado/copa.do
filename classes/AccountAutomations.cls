// AccountAutomations.cls
public class AccountAutomations {
    public static Account setDefaultDescription(Account a){
        if (a.Description != null) return a;
        else {
            a.Description = 'New default description v2'; // Different change
            return a;
        }
    }
    
    public static Account setDefaultPhone(Account a) {
        a.Phone = '1234567890';
        return a;
    }
}