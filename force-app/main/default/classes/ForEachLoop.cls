public class ForEachLoop {
    public static void show(){
        list<Integer> prime = new List<Integer>();
        //   list<Integer> odd = new List<Integer>();
          
        for(Integer i=1;i<=100;i++){
            Integer count =0; 
            for(Integer j=1;j<=i;j++){
                if(math.mod(i,j)==0){
                    count++;
                }
            }
            if(count==2){
                prime.add(i);             
                    
            }
        }
       
             System.debug(prime);
    }

}