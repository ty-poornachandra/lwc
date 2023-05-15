@isTest
public class AccountProcessorTest {
    
    @isTest
    public static void countContacts(){
        Account acc = new Account();
        acc.Name = 'Namrith';
        acc.Support_Plan_Expiration_Date__c=Date.today();
        insert acc;
        
        Contact c1 = new Contact();
        c1.LastName='Poorna';
       	insert c1;
        
        Contact c2 = new Contact();
        c2.LastName = 'Harsha';
        insert c2;
        
        List<Id> accId = new List<Id>();
        accId.add(acc.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(accId);
        Test.stopTest();
        
    }
}