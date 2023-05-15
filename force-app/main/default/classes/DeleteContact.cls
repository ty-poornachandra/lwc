public class DeleteContact {
    public static void deleteCon(){
        List<Account> clist = [select Id from Account where Name like '%-%'];
        delete clist;
		System.debug('Contacts are deleted');
    }
}