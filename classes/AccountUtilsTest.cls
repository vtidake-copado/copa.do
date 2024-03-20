@isTest
public class AccountUtilsTest {
    @isTest
    public static void testIsAccountActive() {
        Account activeAccount = new Account();
        Account inactiveAccount = null;
        
        Boolean isActive = AccountUtils.isAccountActive(activeAccount);
        Boolean isInactive = AccountUtils.isAccountActive(inactiveAccount);
        
        System.assertEquals(true, isActive, 'The active account should be considered active');
        System.assertEquals(false, isInactive, 'The inactive account should not be considered active');
    }
}