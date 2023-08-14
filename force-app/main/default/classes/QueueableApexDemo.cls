public class QueueableApexDemo Implements Queueable{
    Public void Execute(QueueableContext qc){
        //Run Asynchronously
       List<Opportunity> opps = [Select Id,Name from Opportunity];
         for(Opportunity op: opps){
            op.LeadSource = 'Web';
        }
        Update opps;
    }
}