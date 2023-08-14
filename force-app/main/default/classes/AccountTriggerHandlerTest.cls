@isTest
public class AccountTriggerHandlerTest {
     @isTest
    public static void testPreventUpdateOnOldAccounts() {
        // Create an Account record that was created more than 7 days ago
        Account oldAccount = new Account(Name = 'Old Account');
        oldAccount.CreatedDate = Date.today().addDays(-8);
        insert oldAccount;

        // Try to update the Account record
        oldAccount.Name = 'Updated Account';
 Boolean ExceptionThrown=False;
        Test.startTest();
        try {
            update oldAccount;
        } catch (Exception e) {
              ExceptionThrown=true;
             Boolean expectedExceptionThrown = (e.getMessage().contains('You cannot update account created 7 days back'))? true:False;
            System.assertEquals(true, expectedExceptionThrown,e.getMessage());
        }
		 System.assertEquals(true,ExceptionThrown,'No Exception Thrown');
        Test.stopTest();
    }
   
}