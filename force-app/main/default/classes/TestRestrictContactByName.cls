@isTest
public class TestRestrictContactByName {
	@isTest
    public static void check(){
        Contact con = new Contact(LastName = 'INVALIDNAME');
        Contact c =  new Contact(LastName = 'Nitesh');
        Database.SaveResult res = Database.insert(con,false);
        Database.SaveResult res1 = Database.insert(c,True);
        System.debug(res);
        System.debug(res1);
       	System.assertEquals('The Last Name "'+con.LastName+'" is not allowed for DML',res.getErrors()[0].getMessage());
      	System.assertEquals(true, res1.isSuccess());
    }
}