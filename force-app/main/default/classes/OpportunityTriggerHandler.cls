public class OpportunityTriggerHandler {
    public static void populateClosedReason(List<Opportunity> oppList,
                                            Map<Id,Opportunity> oldMap){
                                                for(Opportunity opp:oppList){
                                                    if(opp.StageName == 'Closed Lost' && opp.StageName != oldMap.get(opp.Id).StageName && opp.Closed_Lost_Reason__c == null) {
                                                           opp.addError('Please populate Closed Lost Reason');
                                                       }
                                                }
                                            }
}