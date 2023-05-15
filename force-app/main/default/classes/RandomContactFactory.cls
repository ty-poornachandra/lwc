public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer count,String fName){
        List<Contact> lCon = new List<Contact>();
        for(Integer i =0 ;i<count;i++){
            Contact con = new Contact(FirstName = fName + ' '+i,LastName = 'Test '+i);
            lCon.add(con);
        }
        System.debug(lCon);
        return lCon;
    }
}