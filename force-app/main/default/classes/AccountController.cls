public class AccountController{
    @AuraEnabled
    public static List <ServiceContract> fetchAccounts() {
        //Qyery 10 accounts
        List<ServiceContract> accList = [SELECT Id from ServiceContract LIMIT 10];
        //return list of accounts
        return accList;
    }
}