public class AccountHandlerTrigger {
    
    public static void beforeInsert(List<Account>oldList,List<Account>newList){
        for(Account acc : newList){
            if(acc.Name=='DemoTest'){
                acc.Description='I executed the demo test';
            }
        }
    }
    public static void updateContact(Map<Id,Account>oldMap,List<Account>nlist){
        List<Contact> cList = new List<Contact>();
        for(Account acc : nList){
            if(oldMap.get(acc.id).Phone==null && acc.Phone!= null){
                Contact con = new Contact();
                con.lastName = acc.Name + 'Updated';
                con.AccountId = acc.Id;
                con.Phone = acc.Phone;
                clist.add(con);
            }
        }
        insert(cList);
    }
    
 /*   public static void duplicateName(Map<id,Account> omap,List<Account> nlist){
        Set<String> name = new Set<String>();
        for(Account ac : nlist){
            name.add(ac.name);
        }
        List<Account> oldList = [select id,name from Account where Name in :name];
        for(Account acc : nlist){
            if(oldList.size()!=0){
                acc.addError('Duplicate name is not applicable');
            }
        }
    }*/
    
    public static void phoneNumberUpdateFromAccount(List<Account> nlist){
        
        List<Contact> cList = new List<Contact>();        
        String mobileNo = null;
        Set<id> nid= new Set<id>();
        for(Account acc : nlist){
            mobileNo = acc.Phone;
            nid.add(acc.Id);
        }
        for(Account acc : [Select Id,Phone,(Select id from contacts) from account where id = :nid]){
            System.debug(mobileNo+'-----------------------------');
            System.debug('---------------'+acc.contacts);
            if(mobileNo!=null){
                for(Contact con : acc.contacts){
                    con.MobilePhone = mobileNo;
                    System.debug('------------------');
                    cList.add(con);
                    System.debug('------------------');
                }
                System.debug('------------------');
                update(cList);
                System.debug('Mobile number is uploaded successfully');
            }
        }
    }
}