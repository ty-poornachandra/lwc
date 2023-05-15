public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        /*return [
            SELECT Id, FirstName, LastName, Email
            FROM Contact
            WITH SECURITY_ENFORCED
            LIMIT 10
        ];*/
        throw new AuraHandledException('Forced error');
    }
}