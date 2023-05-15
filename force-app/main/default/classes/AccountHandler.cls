public class AccountHandler {
  /*  public static Account insertNewAccount(String name){
        try{
            Account acc =  new Account(Name=name);
            insert acc;
            System.debug('Acc is inserted');
            return acc;
        }catch(DMLException e){
            return null;
        }
    }*/
    
    public static void insertAccount(Integer acc){
        List<Account> addAccounts= new List<Account>();
        Integer N = 1;
        while(N <= acc){
            addAccounts.add(new Account(Name='Acme Inc '+N ,AccountNumber='A00'+N));
            N++;
        }
        insert addAccounts;
        System.debug('Inserted successfully');
     /*   addAccounts = [select Id from Account where Name like 'Acme Inc%' OR AccountNumber like 'A0%'];
        delete addAccounts;
        System.debug('Deleted');*/
    }
}