@isTest
private class KEF_LoanTriggerHandlerTest {
  
  @isTest static void testMethod1() {
    Opportunity opp = new Opportunity ();
    opp.Name = 'Swift Deal';
    opp.StageName = 'Prospecting';
    opp.CloseDate = Date.today();
    insert opp;
  }
  
  //Comment in class for testing
  
}