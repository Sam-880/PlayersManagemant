trigger AccTrigger on Account (before Update) {
 if(Trigger.isUpdate){
        if(Trigger.isBefore){
            AccountTriggerHandle.preventAccEdit(Trigger.new);
        }
    }
}