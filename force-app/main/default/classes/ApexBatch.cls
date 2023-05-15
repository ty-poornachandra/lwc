public class ApexBatch implements Database.Batchable<sObject>,Database.Stateful {
    
    public final String Query;
    Integer count = 0;
    
    public ApexBatch(String q){
        System.debug('Contructor to be executed');
        Query=q; 
    }
    
    public Database.QueryLocator start(Database.BatchableContext BC){
        System.debug('Start method is executed');
        return Database.getQueryLocator(query);
    }
    
    public void execute(Database.BatchableContext BC, List<Account> scope){
        
        for(Account acc : scope){
            count++;
            System.debug(acc.id+' : '+acc.name);
        }
        System.debug('execute method is executed'+count);
       // FutureMethod.book();
       // System.enqueueJob(new QueuableApex());
    }
    
    public void finish(Database.BatchableContext BC){
        AsyncApexJob job = [select id,status,Jobtype from AsyncApexJob where id=:bc.getJobId()];
        System.debug('Finish method is executed'+job.Status);
    }
    
}