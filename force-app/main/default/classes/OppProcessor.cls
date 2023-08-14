public class OppProcessor Implements Database.Batchable<sObject>,Database.Stateful{
 public Integer recordCount = 0;
    Public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator([Select Id,Name from Opportunity]);
    }
    Public void execute(Database.BatchableContext bc, List<Opportunity> opps){
        for(Opportunity op: opps){
            op.LeadSource = 'Web';
        }
        Update opps;
        recordCount+=opps.Size();
    }
    
    Public void finish(Database.BatchableContext bc){
        System.debug('Total record Processed' + recordCount);
    }
}