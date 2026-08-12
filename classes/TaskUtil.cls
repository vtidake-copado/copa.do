public class TaskUtil {
    public static String getTaskPriority(String leadState) {
        // Validate input
        if (String.isBlank(leadState) || leadState.length() > 2) {
            return null;
        }
        
        // SCA Testing
        String dummyVar;
        System.debug('Testing SCA');
        // SCA Testing
        
        String taskPriority;
        if (leadState == 'CA') {
             taskPriority = 'High'; 
        } else {
             taskPriority = 'Normal';
        }
        return taskPriority;
    }
    
    /**
     * Method: createNewAccount
     * This method creates a new Account record with the provided name and returns the ID of the created record.
     *
     * Parameters:
     * @param accountName - The name of the Account to be created.
     *
     * Return:
     * The ID of the newly created Account record.
     *
     * Exceptions:
     * This method throws a custom exception if the account name is null or empty.
     */
    public static Id createNewAccount(String accountName) {
        // Validate the accountName parameter
        if (String.isBlank(accountName)) {
            throw new AccountCreationException('Account name cannot be null or empty.');
        }
        
        // Create a new Account record
        Account newAccount = new Account(Name = accountName);
        
        // Perform the DML operation
        try {
            insert newAccount;
        } catch (DmlException e) {
            // Log the exception and rethrow a custom exception
            System.debug('Error occurred while creating the account: ' + e.getMessage());
            throw new AccountCreationException('Failed to create the account: ' + e.getMessage());
        }
        
        // Return the ID of the newly created Account
        return newAccount.Id;
    }
    
    /**
     * Custom exception class for Account creation errors.
     */
    public class AccountCreationException extends Exception {}
}