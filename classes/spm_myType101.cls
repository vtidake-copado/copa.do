public with sharing class spm_myType101 {
    
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description';
            return a;
        }
    }

   /**__Changes in Dev1 org for smart test__**/

    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = 'Basauri, 6'; 
        a.billingstate = 'Madrid'; 
        a.billingpostalcode ='28023'; 
        return a;
    }
    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = 'Basauri, 6'; 
        a.shippingstate = 'Madrid';
        a.shippingpostalcode ='28023';
        return a;
    }
    public static Account setDefaultPhone(Account a) {
        a.Phone='688456789';
        return a;
    }

    /**___CONFLICT_2___**/

    public static Account setDefaultURL(Account a) {
        a.website = 'www.copado.com'; 
        return a;
    }
}