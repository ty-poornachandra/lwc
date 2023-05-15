@isTest
public class TestVerifyDate {
    
    
	@isTest 
    public static void TestDate(){
        Test.startTest();
        Date c = VerifyDate.CheckDates(date.newInstance(2023, 01, 01), date.newInstance(2023, 01, 05));
        System.assertEquals(date.newInstance(2023, 01, 05), c);
         Date c1 = VerifyDate.CheckDates(date.newInstance(2023, 01, 01), date.newInstance(2023, 02, 05));
        System.assertEquals((date.newInstance(2023, 01, 31)), c1);
        
        Test.stopTest();
    }
}