trigger AccountTrigger4 on Account (before insert) {
 if(Trigger.isDelete){
        if(Trigger.isBefore){
            AccountTriggerHandler.checkProfileForDeletion(Trigger.old);
        }
    }
}