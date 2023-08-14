@isTest
public class OppProcessorTest {
    @isTest
    Private static void testBatchClass(){
        List<Opportunity> opplist = new List<Opportunity>();
        
        for(integer i=0; i<250; i++){
            opplist.add(new opportunity(Name = 'Test'+i, StageName= 'Prospecting', CloseDate=System.today()));
        }
        Insert opplist;
        
        Test.startTest();
        OppProcessor opp = new OppProcessor();
        Id batchId = Database.executeBatch(opp,250);
        Test.stopTest();
        
        List<Opportunity> updateOpps = [Select Id from Opportunity where LeadSource ='Web'];
        System.assertEquals(250, updateOpps.size());
    }
}