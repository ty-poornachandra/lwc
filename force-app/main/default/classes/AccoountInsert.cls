public class AccoountInsert { 
    public static String contactInsert(){
      
        List<Contact> clist = new List<Contact>();
        for(Integer i = 1 ; i <=10 ; i++){
            Contact con = new Contact(FirstName = 'Contact' ,LastName = '-'+i );
          	clist.add(con);  
        }
        insert clist;
        return 'Contacts are inserted';
    }
}