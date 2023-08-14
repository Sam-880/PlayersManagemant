public class ExceptionClass {
    Public static void ExceptionHandler(){    
        // Use the Safe nevigation Operator(?.) to replace explicit, sequential checks for null reference.
        // This operator short circuit expressions that attempt to operate on a null Value and return null insted of Null Pointer Exception.
        // adv --> avoid clutterd code when there are too many null checks
        Map<Id,Account> fetchAccount = new Map<Id,Account>([SELECT Id,Name FROM Account]);
        //traditional way to check null valuee
        //if(fetchAccount.get('0015i00000ujQU4AAn')!= null){
          // System.Debug('Account Name: ' + fetchAccount.get('0015i00000ujQU4AAn').Name);
        //}  
        
        //Safe Navigation Operator
          System.Debug('Account Name: ' + fetchAccount.get('0015i00000ujQU4AAn')?.Name);                                       
        
        
        
    }
}