public class AddPrimaryContact implements Queueable {
	  
    Private Contact con ;
    private String state;
    
    public AddPrimaryContact(Contact c,String state){
        this.con =c;
        this.state = state;
    }
    
    
    public void execute(QueueableContext qc){
        List<Account> aList = [Select Id,Name,(Select firstname,lastname from contacts) from Account
                               where BillingState = :state limit 200];
        
        List<Contact> cList = new List<Contact>();
        
        for(Account ac : aList){
            Contact ct = con.Clone();
            ct.AccountId = ac.id;
            cList.add(ct);
        }
        if(cList.size()!=0){
            insert(cList);
        }
    }
}