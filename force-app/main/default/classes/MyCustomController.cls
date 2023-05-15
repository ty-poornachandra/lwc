public class MyCustomController {
    //public final Contact con ;
    public String name{get;set;}
    
    public List<Contact> contacts{get;set;}
    
    public MyCustomController(){
        contacts = [Select id,firstName,lastName from Contact limit 5];
        name='poorna';
    }
    
    
    
    public PageReference details(){
        name='Poorna Chandra';
        return null;
    }
    
    
}