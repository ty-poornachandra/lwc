public class ContactAndLeadSearch {
    public static List<List< sObject>> searchContactsAndLeads(String name){
        
        List<List<sObject>>sObj = [find :name in All Fields returning Contact(firstName,lastName),Lead(firstName,lastName),Account(Name)];
        System.debug(sObj[0]);
        System.debug(sObj[1]);
        System.debug(sObj[2]);
        return null;
    }
}