public class NewCaseListController {
    
    public List<Case> getNewCases(){
       List<Case> casefilter= [Select Id,CaseNumber from Case where status  ='New'];
        return casefilter;
    }
}