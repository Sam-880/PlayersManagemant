public class SOSLDemo {
    Public static void getSoslResult(){
        List<List<sObject>> sObjectList = [FIND 'test' IN ALL FIELDS Returning Account (Id,Name,Phone)];
        system.debug('sObjectList==> '+sObjectList.size());
    }
}