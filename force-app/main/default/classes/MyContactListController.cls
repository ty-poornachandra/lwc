public class MyContactListController {
    @AuraEnabled
    public static List<Contact> getContacts() {
        return [SELECT Id, FirstName, LastName, Email, Phone FROM Contact ];
    }
}