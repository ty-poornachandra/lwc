@isTest
public class LeadProcessorTest {
    
    @testSetup
    public static void setup(){
        List<Lead> lea = new List<Lead>();
        for(Integer i=0; i<200 ; i++){
            Lead l = new Lead();
            l.LastName = 'Lead'+i;
            l.Company='Neeha';
            l.MobilePhone='9490291031';
            lea.add(l);            
        }
        insert(lea);
        
    }
    public static testmethod void test(){
        Test.startTest();
        LeadProcessor le = new LeadProcessor();
        Id batch = Database.executeBatch(le,200);
        Test.stopTest();
        System.assertEquals(200, [select count() from lead where leadsource = 'Dreamforce' ]);
    }
}