@isTest
private class ECC_Loan_PB_Handler_Test {
  
  @isTest static void testMethod1() {
    Opportunity opp = new Opportunity ();
    opp.Name = 'Swift Deal';
    opp.StageName = 'Prospecting';
    opp.CloseDate = Date.today();
    insert opp;
  }
  
  //Comment in class for testing
  
}