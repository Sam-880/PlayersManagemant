@isTest
public class AccountTestClass {
 @isTest
    public static void testAllowDeleteForSysAdmin() {
        // Create an Account record
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        // Try to delete the Account record as a System Administrator user
        Test.startTest();
        System.runAs(new User(Id = UserInfo.getUserId(), ProfileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1].Id)) {
            delete testAccount;
        }
        Test.stopTest();
    }
    
    @isTest
    public static void testPreventDeleteForNonSysAdmin() {
        // Create an Account record
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;
 Boolean ExceptionThrown=False;
        // Try to delete the Account record as a Non-System Administrator user
        Test.startTest();
        System.runAs(new User(Id = UserInfo.getUserId(), ProfileId = '00e5i000000JhmGAAS')) {
            try {
                delete testAccount;
                // The deletion should be prevented, so this line should not be reached.
                //System.assert(false, 'Account deletion should not be allowed for non-System Administrator users.');
            } catch (Exception e) {
               ExceptionThrown=true;
            Boolean expectedExceptionThrown = (e.getMessage().contains('Only System Administrator can delete Account'))?true:False;
            System.assertEquals(true, expectedExceptionThrown,e.getMessage());
        }
        System.assertEquals(true,ExceptionThrown,'No Exception Thrown');
        }
        Test.stopTest();
    }
}