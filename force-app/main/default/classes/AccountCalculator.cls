public class AccountCalculator {
    @future
    Public static void countContacts(List<Id> accIds){
        List<Account> accList = [Select Id,(Select Id from Contacts) from Account where Id IN : accIds];
        for(Account acc :accList){
            //acc.Number_Of_Contact__c =accList.Contacts.Size();
            acc.Number_Of_Contact__c = acc.Contacts.Size();
        }
        if(!accList.isEmpty()){
            Update accList;
        }
    }
}