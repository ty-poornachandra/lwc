public class TaskController {
    
    
    public Account account { get; private set; }
    
    public List<Account> accounts;
    
    public List<Account> getAccounts(){
        return accounts;
    }
    
   
    public TaskController() {
         account = new Account() ;            
         accounts = [Select Id,Name,Phone,Industry From Account];
     }
    
    public PageReference save() {
        try {
            System.debug('Insert the record');
            insert(account);
             account = new Account() ; 
        } catch(System.DMLException e) {
            ApexPages.addMessages(e);
            return null;
        }	
        return null;
    }
    
     public PageReference modifing(){
        System.debug('Modify is running');
        accounts = [Select Id,Name,Phone,Industry From Account];
        return null;
    }
    
    
    
    
    
    
    
}