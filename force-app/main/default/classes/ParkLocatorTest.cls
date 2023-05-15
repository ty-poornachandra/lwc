@isTest
private class ParkLocatorTest {

    public static testmethod void testCallout(){
        Test.setMock(WebServiceMock.class,new ParkServiceMock());
        String country = 'United States';
        List<String> result = ParkLocator.country(country);
        List<String> parks = new List<String>{'Yellowstone','National Park'};
            System.assertEquals(parks, result);
    }
}