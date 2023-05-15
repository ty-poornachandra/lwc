public class ParkLocator {
	 
    public static String[] country(String myCountry){
        ParkService.ParksImplPort sml = new ParkService.ParksImplPort();
        return sml.byCountry(myCountry);
    }
}