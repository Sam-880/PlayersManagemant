public class ScheduleApexDemo Implements Schedulable{
    Public void Execute(SchedulableContext sc){
        //Any code written inside the Block will be schedule
        List<Account> acc = [Select Id, Name from Account where CREATEDDATE= Today];
        for(Account ac:acc){
            ac.Name = 'Todays Date '+ ac.Name;
        }
        Update acc;
        //Database.executeBatch(new OppProcessor());
        System.enqueueJob(new QueueableApexDemo());
    }
}