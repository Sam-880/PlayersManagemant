public class ScheduleableOppUpdateTask Implements Schedulable{
 
    Public void Execute(SchedulableContext sc){
       List<Opportunity> oppList = [Select Id,LeadSource,ownerId from Opportunity where LeadSource = null LIMIT 200];
                                   
        for(Opportunity opp : oppList){
            opp.LeadSource = 'Web';
        }
        if(!oppList.isEmpty()){
            Update oppList;
        }
        
    }
}