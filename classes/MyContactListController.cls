public class MyContactListController {
@AuraEnabled
public static List<Contact> getContacts(Id recordId) {
   return [Select Id, FirstName, LastName, Email, Phone From Contact Where AccountId = :recordId];
    //this is a comment modified XXX 222
}

}