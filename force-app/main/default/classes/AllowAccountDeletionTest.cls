@isTest
public class AllowAccountDeletionTest {
 @isTest
    public static void testAllowAccountDeletion_NonSystemAdmin() {
        // Create an Account record
        Account testAccount = new Account(Name = 'Test Account');
        insert testAccount;

        // Create a user with a profile other than "System Administrator"
        Profile nonSysAdminProfile = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
        User testUser = new User(
            ProfileId = nonSysAdminProfile.Id,
            LastName = 'Test User',
            Email = 'testuser@example.com',
            Username = 'testuser@example.com',
            Alias = 'tuser',
            TimeZoneSidKey = 'America/New_York',
            LocaleSidKey = 'en_US',
            EmailEncodingKey = 'UTF-8',
            LanguageLocaleKey = 'en_US'
        );
        insert testUser;

        // Run the test as the created user
        System.runAs(testUser) {
            // Attempt to delete the Account record
            Test.startTest();
            try {
                delete testAccount;
            } catch (DmlException e) {
                // Ensure that the user is not allowed to delete the Account
                System.assertEquals('You are not allowed to delete Account records.', e.getDmlMessage(0));
            }
            Test.stopTest();
        }
    }
}