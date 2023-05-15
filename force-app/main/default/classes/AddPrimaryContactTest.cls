@isTest
public class AddPrimaryContactTest {

    public static testmethod void setup(){
        
        List<Account> aList = new List<Account>();
        
        for(Integer i = 0;i<50;i++){
            aList.add(new Account(Name='Account'+i,BillingState = 'CA'));
        }
        
        for(Integer i = 0;i<50;i++){
            aList.add(new Account(Name='Account'+i,BillingState = 'NY'));
        }
        insert aList;
        
        Contact con = new Contact(FirstName = 'Poorna',LastName = 'Chandra');
        insert con;
        
        Test.startTest();
        System.enqueueJob(new AddPrimaryContact(con,'CA'));
        Test.stopTest();
        
        System.assertEquals(50, [Select count() from contact where accountId in (Select id from Account where BillingState='CA')]);
    }
    
}