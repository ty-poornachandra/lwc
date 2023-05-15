public class LeadProcessor implements Database.Batchable<sObject> {
    public Database.QueryLocator start(Database.BatchableContext bc){
		return Database.getQueryLocator('Select LeadSource from lead');        
    }
    public void execute(Database.BatchableContext bc,List<Lead> l){
        for(Lead le : l){
            le.LeadSource='Dreamforce';
        }
        update(l);
    }
    public void finish(Database.BatchableContext bc){
        System.debug('This is completed');
    }
}