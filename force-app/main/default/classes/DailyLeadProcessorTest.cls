@isTest
public class DailyLeadProcessorTest {
  
   public static  String CRON_EXP = '0 0 0 ? * * *';
    
    public static testmethod void testSch(){
       
        
        List<Lead> li = new List<Lead>();
        
        for(Integer i =0;i<200;i++){
            lead l = new Lead(LastName = 'Lead'+i,Company = 'Neeha');
            li.add(l);
        } 
        insert li;
        
        Test.startTest();
        String jobId = System.schedule('poorna', CRON_EXP, new DailyLeadProcessor());
        Test.stopTest();
        
        List<Lead> le = [select id from lead where LeadSource = 'Dreamforce' ];
        System.debug(le);
        
             System.assertEquals(200,le.size());
        
       
    }
}