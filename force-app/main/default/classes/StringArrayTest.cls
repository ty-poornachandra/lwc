public class StringArrayTest {
    public static List<String> generateStringArray(Integer n){
        String[] data = new List<String>();
        for(Integer i=0;i<n;i++){
            data.add('Test '+ i);
            System.debug(data[i]);
        }
        return data;
    }
}