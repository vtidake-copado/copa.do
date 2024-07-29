// OpportunityTriggerTest1.apex

@isTest
public class OpportunityTriggerTest1 {
    @isTest
    static void testClosedWonStage() {
        // Create a test Opportunity record with Amount >= 5000
        Opportunity testOpportunity = new Opportunity(
        Name = 'Test Opportunity',
        Amount = 6000,
        CloseDate = Date.newInstance(2023, 12, 30),
        StageName = 'Qualification');
        insert testOpportunity;

        // Retrieve the updated Opportunity record after trigger execution
        testOpportunity = [SELECT Id, StageName FROM Opportunity WHERE Id = :testOpportunity.Id];

        // Verify that the Stage field is set to "Closed Won"
        System.assertEquals('Closed Won', testOpportunity.StageName);
    }
}