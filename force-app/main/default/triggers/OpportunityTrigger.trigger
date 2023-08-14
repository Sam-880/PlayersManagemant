trigger OpportunityTrigger on Opportunity (before update) {
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            OpportunityTriggerHandler.populateClosedReason(Trigger.New, Trigger.oldMap);
                                                          
        }
    }
    
}