public class QueuableApex implements Queueable{
    public void execute(QueueableContext qc){
        System.debug('Queuable Apex is working');
        FutureMethod.book();
    }        
}