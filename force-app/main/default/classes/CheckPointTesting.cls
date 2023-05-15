public class CheckPointTesting {
    
    public static void m11(){
        m1();
        m1();
         System.debug('CheckPoint working 1');
        m2();
    }
	 
    public static void m1(){
        System.debug('CheckPoint1');
    }
     public static void m2(){
        System.debug('CheckPoint2');
    }
     public static void m3(){
        System.debug('CheckPoint3');
    }
}