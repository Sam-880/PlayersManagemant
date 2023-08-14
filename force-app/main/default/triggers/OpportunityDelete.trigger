trigger OpportunityDelete on Opportunity (before insert) {
    if(Trigger.isDelete){
        if(Trigger.isBefore){
            OpportunityTriggerHandler1.checkProfileForDeletion(Trigger.old);
        }
    }
}