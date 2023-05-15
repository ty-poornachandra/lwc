@isTest
public class AccountHandlerTrigger_Test {
	@isTest
    public static void check(){
        Account a = new Account();
        a.name='DemoTest';
        a.Support_Plan_Expiration_Date__c=Date.newInstance(2023, 2, 17);
        insert a;
       
    }
}