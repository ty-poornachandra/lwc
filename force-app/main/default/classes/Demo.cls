public class Demo {
    public Account acc{get;set;}
    
    Id id ; 
    public List<Account> accounts{get;set;}
    
    public Demo(){
        id = ApexPages.currentPage().getParameters().get('id');
        acc=(id==null)? new Account() : [Select Id ,Name,Site From Account Where Id = :id];
        accounts=[Select ID,Name,Site from Account] ;
    }
    
    public PageReference save(){
        upsert acc;
       // ID a=id;
   
        acc=new Account();
        return null;
    }
    
    public void modify(){
        accounts=[Select ID,Name,Site from Account];
    }
    
}