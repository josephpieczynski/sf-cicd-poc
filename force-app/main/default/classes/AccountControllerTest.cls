@isTest
private class AccountControllerTest {
    @isTest
    static void fetchAccountsReturnsList() {
        Test.startTest();
        List<ServiceContract> result = AccountController.fetchAccounts();
        Test.stopTest();

        System.assert(result != null, 'fetchAccounts should never return null');
        System.assert(result.size() <= 10, 'Query is limited to 10 records');
    }
}
