@isTest
public class ContactTriggerTest {

    public static testmethod void testSetup(){
        Account ac = new Account(name = 'poorna');
        insert ac;
        list<Contact> lcon = new List<Contact>();
        for(Integer i = 1;i<=5;i++){
            Contact con = new Contact(Lastname='Contact'+i,accountId=ac.Id);
            lcon.add(con);
        }
        insert lcon;
        
        Test.startTest();
        ContactTrigger.show(ac.id);
        Test.stopTest();
        
        System.assertEquals(5, [select count() from contact where accountId=:ac.id]);
    }
}