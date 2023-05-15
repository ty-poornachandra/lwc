public class DuplicateName {
    
    public static void duplicate(List<Account> nlist,Map<Id,Account> omap){
        
        Map<String, Account> accMap = new Map<String, Account>();
        
        for (Account acc : nlist) { 
         
            if (System.Trigger.isInsert || (acc.Name != omap.get(acc.Id).Name)) {
                
                if (accMap.containsKey(acc.Name)) {
                    acc.Name.addError('Another account has the ' + acc.Name + ' same name.');
                } else {
                    accMap.put(acc.Name, acc);
                }
            }
        }
        
        for (Account acc : [SELECT Name FROM Account WHERE Name IN :accMap.KeySet()]) {
            Account newAcc = accMap.get(acc.Name);
            newAcc.Name.addError('An account with this name ' + acc.Name + ' already exists.');
        }
    }
    
}