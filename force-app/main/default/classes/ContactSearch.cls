public class ContactSearch {
    
    public static List<Contact> searchForContacts(String lName,String postal){
        List<Contact> contacts = [select id,name from Contact where LastName = :lName AND MailingPostalCode = :postal];
        System.debug('Successfully');
        for(Contact[] con : [select id,name from Contact where LastName = :lName AND MailingPostalCode = :postal]){
            System.debug(con);
        }
        return contacts;
    }
}