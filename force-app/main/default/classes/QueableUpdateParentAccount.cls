public class QueableUpdateParentAccount implements Queueable{
   
    Private List<Account> accList;
    Private Id parentAccId;
    
    Public QueableUpdateParentAccount(List<Account> accRecords, Id id){
        this.accList = accRecords;
         this.parentAccId = id;
    }
    Public void Execute(QueueableContext qc){
        for(Account acc : accList){
            acc.ParentId = parentAccId;
        }
        Update accList;
    }

}