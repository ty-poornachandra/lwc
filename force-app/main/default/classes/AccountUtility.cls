public class AccountUtility {
    public static void viewAnnualRevenue(){
        List<Account> accountsList = [select name,annualrevenue from Account];
        for(Account acc : accountsList){
            String acctRev = acc.name+' : '+acc.AnnualRevenue;
            System.debug(acctRev);
        }
    }
}