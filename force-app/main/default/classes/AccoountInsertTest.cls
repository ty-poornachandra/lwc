@isTest
public class AccoountInsertTest {

    public static testmethod void testInsertContact(){
        
        String msg=AccoountInsert.contactInsert();
        
        System.assertEquals(10, [select count() from contact where firstname='Contact' ]);
        System.assertEquals('Contacts are inserted', msg);
    }
}