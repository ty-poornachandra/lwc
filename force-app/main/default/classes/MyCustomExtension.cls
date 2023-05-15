public class MyCustomExtension {
	  private final Account acct;
    
    public List<Account> accounts{get;set;}
    
  
    public MyCustomExtension(ApexPages.StandardController stdController) {
        this.acct = (Account)stdController.getRecord();
        fetchData();
    }

    public String getGreeting() {
        return 'Hello ' + acct.name + ' (' + acct.id + ')';
    }
  
    public String fetchData(){
        accounts = [Select id,name,annualrevenue from account limit 10];
        return 'FetchData Successfully';
    }
}