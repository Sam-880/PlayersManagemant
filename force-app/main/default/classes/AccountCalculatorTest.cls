@isTest
public class AccountCalculatorTest {
    @isTest
    Private static Void countContactsTest(){
        List<Account> accList = new List<Account>();
        for(Integer i=0; i<250; i++){
            accList.add(new Account(Name='Test'+i));
        }
        insert accList;
        
        List<Contact> conList = New List<Contact>();
        
        List<Id> accIds = new List<Id>();
        for(Account acc: accList){
            conList.add(new Contact(FirstName='Test', LastName = acc.Name, AccountId=acc.Id));
            accIds.add(acc.Id);
        }
        
        Insert conList;
        Test.startTest();
        AccountCalculator.countContacts(accIds);
        Test.stopTest();
        
        List<Account> accs = [Select Id,Number_Of_Contact__c from Account];
        System.assertEquals(1,accs[0].Number_Of_Contact__c);
        
        
    }
}