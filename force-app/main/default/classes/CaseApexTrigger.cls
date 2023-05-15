public class CaseApexTrigger {
	
    public static void checkDescription(List<Case> lCase,Map<Id,Case> cMap){
        for(Case ca : lCase){
            if(cMap.get(ca.Id).status =='New' && ca.Status == 'Escalated' && ca.Description == null){
                ca.addError('Record is not saved');
            }
        }
    }
    
   
}