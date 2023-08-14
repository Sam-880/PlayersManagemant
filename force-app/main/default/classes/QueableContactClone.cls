public class QueableContactClone implements Queueable{
    Private Contact con;
    Private String industryValue;
    
    Public QueableContactClone(Contact con, String industryValue){
        this.con = con;
        this.industryValue = industryValue;
    }
    Public void Execute(QueueableContext qc){
        List<Account> accList = [Select Id,Name from Account where Industry=:industryValue LIMIT 200];
        List<Contact> contactList = new List<Contact>();
        for(Account acc : accList){
            Contact c = con.Clone(true);
            c.AccountId = acc.Id;
            contactList.add(c);
        }
        if(!contactList.isEmpty()){
            Insert contactList; 
        }
        
    }
}