@isTest
public class OpportunityTriggerHandlerTest {
    @isTest
    Public Static Void testOpportunity(){
        List<Opportunity> oppList = new List<Opportunity>();
        
        for(Integer i=0; i<10; i++){
            Opportunity opp = new Opportunity();
            opp.Name = 'Sam';
            opp.StageName ='Prospecting';
            // opp.Closed_Lost_Reason__c='';
            opp.CloseDate = date.today();
            opp.Amount = 1000000;
            oppList.add(opp);
        }
        Boolean ExceptionThrown=False;
        
        Test.startTest();
        Insert oppList; 
        for(Opportunity op:oppList){
            op.StageName = 'Closed Lost';
            op.Closed_Lost_Reason__c='';  
        } 
        try{
            Update oppList;
        }catch(Exception e){
            ExceptionThrown=true;
            Boolean expectedExceptionThrown = (e.getMessage().contains('Please populate Closed Lost Reason'))?true:False;
            System.assertEquals(true, expectedExceptionThrown,e.getMessage());
        }
        System.assertEquals(true,ExceptionThrown,'No Exception Thrown');
        Test.stopTest();
    }
}