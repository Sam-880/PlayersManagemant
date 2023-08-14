public class OpportunityTriggerHandler1 {
    public static void checkProfileForDeletion(List<Opportunity> oppList){
        Profile p = [SELECT Id FROM Profile WHERE Name = 'System Administrator'];
                    
                     for(Opportunity opp:oppList){
                         if(opp.StageName == 'Closed Won' || opp.StageName =='Closed Lost')
                            
                             if(UserInfo.getProfileId() != p.Id){
                                  				opp.addError('Only System administrator can delete opportunity');
                                             
                                              }
                                     }
                            }
}