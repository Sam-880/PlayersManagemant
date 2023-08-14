public class DemoWrapperClass {
    public static AccountWrapperClassDemo demoWrapperMethod(String accountName){
        List<Account> acList = [SELECT Id, Name, (SELECT Id, FirstName, LastName, Email FROM Contacts),(SELECT Id, CaseNumber, Subject, Status FROM Cases) FROM Account where Name =:accountName];
    AccountWrapperClassDemo wrap = new AccountWrapperClassDemo();
        wrap.conList = acList[0].Contacts;
         wrap.casesList = acList[0].Cases;
        return wrap;
    }
    public class AccountWrapperClassDemo{       
        List<Contact> conList;
         List<Case> casesList;
    }
}