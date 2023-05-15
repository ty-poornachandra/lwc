public class AccountProcessor {
    @Future
    public static void countContacts(List<Id> accId){
        List<Account> filter=[Select id,(Select id from contacts) from Account where id=:accId];
        for(Account acc : filter ){
            acc.Number_of_Contacts__c = [Select count() from contact where AccountId = :acc.id];
            update acc;
        }
    }
}