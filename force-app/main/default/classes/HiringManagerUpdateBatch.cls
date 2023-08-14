Global class HiringManagerUpdateBatch implements Database.Batchable<SObject> 
{
	Global Database.QueryLocator Start(Database.BatchableContext bContext)
    {
        string accQuery = 'Select id, name, Rating,Industry from Account';
        return Database.getQueryLocator(accQuery);
    }
    
    Global void Execute(Database.BatchableContext bContext, List<SObject> recordsToProcess)
    {
        if(! recordsToProcess.isEmpty())
        {
            List<Account> accToUpdate = new List<Account>();
            
            for(SObject obj : recordsToProcess)
            {
                for(integer i=0; i<50; i++){
                     Account accRecord = (Account) obj;
                
                	accRecord.name = 'Tanmay';
                	accRecord.Rating = 'Hot';
                
                accToUpdate.Add(accRecord);
                }
               
            }
            
            if(! accToUpdate.isEmpty())
            {
                Update accToUpdate;
            }
        }
    }
    
    Global void Finish(Database.BatchableContext bContext)
    {
        System.debug('Batch Job Id is....: '+ bContext.getJobId());
        
        AsyncApexJob jobDetails = [Select id, status, totaljobItems, jobitemsprocessed, 
                                  			numberoferrors, createdby.email
                                  					from AsyncApexJob
                                  							Where id =: bContext.getJobId()];
        
		//MessagingUtilityHelper.SendBatchJobStatusNotifications(jobDetails,'HiringManagerUpdateBatch');        
    }
}