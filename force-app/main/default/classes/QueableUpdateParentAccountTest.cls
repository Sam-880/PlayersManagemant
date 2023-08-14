@isTest
public class QueableUpdateParentAccountTest {
    
    @testSetup
    static void setup(){
        List<Account> accList = new List<Account>();
        
        accList.Add(new Account(Name = 'Parent'));
        
        for(integer i=0; i<200; i++){
            accList.Add(new Account(Name = 'Test Account '+i));
        }
        insert accList;
        
    }
    
    @isTest
    Private static void testQueueable(){
        Id parentId = [Select Id from Account where Name = 'Parent'][0].Id;
        List<Account> acclists = [Select Id from Account where Name LIKE 'Test Account%'];
       
        QueableUpdateParentAccount q = new QueableUpdateParentAccount(acclists,parentId);
        
        Test.startTest();        
        Id jobId = system.enqueueJob(q);
        Test.stopTest();
        
        system.assertEquals(200, [Select count() from Account where parentId=:parentId]);
    }
}