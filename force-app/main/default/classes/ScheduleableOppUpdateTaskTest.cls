@isTest
public class ScheduleableOppUpdateTaskTest {
     
@isTest
    Public static void testMethods(){
        List<Opportunity> oppList = new List<Opportunity>();
        for(Integer i=0; i<=500; i++){
            if(i<250){
                oppList.add(new Opportunity(Name='Test'+i,StageName='Prospecting',closeDate=System.Today()));
            }else{
                oppList.add(new Opportunity(Name='Test'+i,StageName='Prospecting',
                                            closeDate=System.Today(),LeadSource='Web'));
            }
        }
        Insert oppList;
        
        Test.startTest();
        string sc = '0 0 0 24 7 ? 2023';
        String jobId = System.schedule('Process Opportunities', sc, new ScheduleableOppUpdateTask());
        Test.stopTest();
    }
}