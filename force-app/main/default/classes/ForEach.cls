public class ForEach {
    List<Account> acc = [Select Id ,Name from account limit 10];
    public void method(){
        for(Account a : acc){
            System.debug(a);
        }
    }
}