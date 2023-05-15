public class FutureMethod {
	
    @future
    public static void book(){
        System.debug('Book is opened');
    }
    
    public static void show(){
        System.debug('Reading the lesson');
        book();
        System.debug('writing the index');
    }
    
}