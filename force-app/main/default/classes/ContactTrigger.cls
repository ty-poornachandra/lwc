public class ContactTrigger {
	    
    public static void show(ID accid){
     //   ID accid=ApexPages.currentPage().getparameters.get('id');
        Integer count = 0;
        list<Account> acc=[Select Id,(Select Name from contacts) from account where id = :accid];
        System.debug(acc);
        for(Account a : acc){
            System.debug(a);
            for(Contact con : a.contacts){
                System.debug(con);
                count++;
            }
            System.debug(count);
            a.Contact_count_by_trigger__c=count;
            upsert(a);
        }
       
        
    }
  
}