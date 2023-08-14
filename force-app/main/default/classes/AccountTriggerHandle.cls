public class AccountTriggerHandle {
    public static void preventAccEdit(List<Account> accList){
        for(Account acc:accList){
            if(acc.CreatedDate < System.today()-6){
                acc.addError('You cannot update account created 7 days back');
                             }
                         }
                 }
  }