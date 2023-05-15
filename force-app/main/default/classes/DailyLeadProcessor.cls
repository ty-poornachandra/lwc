global class DailyLeadProcessor implements Schedulable {
	
    global void execute(SchedulableContext sc){
        List<Lead> li = [Select id,Name,LeadSource from lead limit 200];
        List<Lead> uli = New List<Lead>();
        for(Lead l : li){
            l.LeadSource ='Dreamforce';
            uli.add(l);
        }
        update uli;
    }
}