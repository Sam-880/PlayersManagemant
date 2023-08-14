public class ContactCreation {
    Public static Contact conCreation(string name){
        Contact con ;
        try{
            con = new Contact();
            con.LastName = '';
            insert con;
            system.debug('con==>'+con);
        }catch(Exception e){
            system.debug('e==>'+e.getCause() +e.getLineNumber() +e.getStackTraceString());
        }
        return con;
    }
}