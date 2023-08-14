@isTest
public class QueableContactCloneTest {
    @testSetup
    static void setup1(){
        List<Account> accList = new List<Account>();
        for(integer i=0; i<200; i++){
            accList.Add(new Account(Name = 'Parent'+i,Industry='Media'));
        }
        insert accList;
        
        //insert c;
    }
    
    @isTest
    Private static void testQueueable(){
        
        //Contact con = [Select Id from Contact where LastName = 'Queueable Apex 1'];
    Contact c = New Contact(LastName = 'Queueable Apex 1');
        String industryValue = 'Media';
        QueableContactClone q = new QueableContactClone(c,industryValue);
        
        Test.startTest();        
        Id jobId = system.enqueueJob(q);
        Test.stopTest();
        
        system.assertEquals(200, [Select Count() from Contact where AccountId IN (Select Id from Account where Industry = 'Media')]);
    }
}