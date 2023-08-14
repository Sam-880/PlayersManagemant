public class AccountTriggerHandler {
    public static void checkProfileForDeletion(List<Account> accList){
        Profile p = [SELECT Id FROM Profile WHERE Name = 'System Administrator'];
                    
                     for(Account acc:accList){
                         if(UserInfo.getProfileId() != p.Id){
                             acc.addError('Only System Administrator can delete Account');
										}
                             }
                    }
                                          
        }