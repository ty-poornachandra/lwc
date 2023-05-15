public class AccountListController {
    @AuraEnabled
    public static List<Account> getAccounts(){
        List<Account> acc= new List<Account>();
        acc=  [select ID,Name from Account limit 10];
        return acc;
    }
    
}