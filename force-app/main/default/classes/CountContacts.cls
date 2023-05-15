public class CountContacts {
    
    public static void noOfContactsPresentInAccount(List<Contact> newList){
        List<Id> accId = new List<Id>();
        List<Messaging.SingleEmailMessage> allmsg = new List<Messaging.SingleEmailMessage>();
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] em=new List<String>();
        for(Contact c : newList){
            accId.add(c.AccountId);
            em.add(c.email);
        }
        List<Account> ac = new List<Account>();
        
        List<Contact> con = new List<Contact>();
        List<Account> acc=[Select id,name,(Select id,Amount__c from contacts) from Account where id=:accId ];
        List<Decimal> sl=new List<Decimal>();
        
        for(Account a : acc){
            Decimal sumOfAmount = 0;
            //  con.add(a.contacts);
            a.Number_Of_Contacts__c=a.contacts.size();
            for(Contact c : a.contacts){
                if(c.Amount__c!=null){
                    sumOfAmount=c.Amount__c+sumOfAmount;
         			//sl.add(c.Amount__c);
                    System.debug(c.Amount__c);
                }
            }
           // sl.sort();
         //   a.Max_Amount_From_Contact__c=sl.get(0);
        	//System.debug(sl);
            a.AnnualRevenue=sumOfAmount;
            //System.debug(sl.get(0));
           
            ac.add(a);
        }  
        update(ac);
        mail.setToAddresses(em);
        mail.setSubject('Contact from salesfroce');
        mail.setHTMLBody('Contact is modified');
        mail.setTargetObjectId(newList.get(0).id);
        
        allmsg.add(mail);
        //Messaging.sendEmail(allmsg);
        
    }
    
    
    
}



/*public static void CountContacts(list<contact>newlist){
System.debug('Counting');//debug 
set<id>accountId = new set<id>();
for(contact con:newlist){
accountId.add(con.AccountId);
}
list<account>acclist = [select id,name,Owner.Email,(select id from contacts)from account where id =:accountId];
system.debug('acList : '+accList);//debug
list<account>acc = new list<account>(); //add in top
List<Messaging.SingleEmailMessage> mails =  new List<Messaging.SingleEmailMessage>();
for(account ac:acclist){
ac.CountContacts__c = ac.contacts.size();
system.debug('ac.contacts.size' +ac.contacts.size());//debug
acc.add(ac);
mails.add(mailings(ac));
}
update acc;

// useless line set<id>accId = new set<id>();
//list<account> acclist = [Select Owner.Email from Account where Id =:con.AccountId];

Messaging.sendEmail(mails);
} 
public static Messaging.SingleEmailMessage mailings (account acc){

Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

List<String> sendTo = new List<String>();
sendTo.add(acc.owner.email);
mail.setToAddresses(sendTo);

//  mail.setReplyTo('b@gmail.com');
mail.setSenderDisplayName('Conatct Created');

mail.setSubject('new Contact Created to Account');
String body = 'Dear';
body += 'One new contact created.';
mail.setHtmlBody(body);

return mail;
}*/