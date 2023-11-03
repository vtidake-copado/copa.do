// OpportunityTriggerTest2.apex

@isTest
public class OpportunityTriggerTest2 {
    @isTest
    static void testProspectingStage() {
        // Create a test Opportunity record with Amount < 5000
        Opportunity testOpportunity = new Opportunity(
        Name = 'Test Opportunity', 
        Amount = 4000,
        CloseDate = Date.newInstance(2023, 12, 30),
        StageName = 'Qualification');
        insert testOpportunity;

        // Retrieve the updated Opportunity record after trigger execution
        testOpportunity = [SELECT Id, StageName FROM Opportunity WHERE Id = :testOpportunity.Id];

        // Verify that the Stage field is set to "Prospecting"
        System.assertEquals('Prospecting', testOpportunity.StageName);
    }
}