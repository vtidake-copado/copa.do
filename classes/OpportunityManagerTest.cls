@IsTest
public class OpportunityManagerTest {
    
    @IsTest
    static void testCalculateDiscountedAmount() {
        // Create test opportunity
        Opportunity testOpp = new Opportunity(
            Name = 'Test Opportunity',
            Amount = 1000,
            CloseDate = Date.today(),
            StageName = 'Prospecting'
        );
        
        // Test with 20% discount
        Decimal discountedAmount = OpportunityManager.calculateDiscountedAmount(testOpp, 20);
        System.assertEquals(800, discountedAmount, 'Discounted amount should be 800');
        
        // Test with 0% discount
        discountedAmount = OpportunityManager.calculateDiscountedAmount(testOpp, 0);
        System.assertEquals(1000, discountedAmount, 'Amount should remain 1000 with 0% discount');
    }
    
    @IsTest
    static void testUpdateStageBasedOnProbability() {
        // Create test opportunity
        Opportunity testOpp = new Opportunity(
            Name = 'Test Opportunity',
            CloseDate = Date.today(),
            StageName = 'Prospecting',
            Probability = 90
        );
        
        // Test high probability
        OpportunityManager.updateStageBasedOnProbability(testOpp);
        System.assertEquals('Closing', testOpp.StageName, 'Stage should be Closing for 90% probability');
        
        // Test medium probability
        testOpp.Probability = 60;
        OpportunityManager.updateStageBasedOnProbability(testOpp);
        System.assertEquals('Negotiation', testOpp.StageName, 'Stage should be Negotiation for 60% probability');
    }
    
    @IsTest
    static void testSetDefaultCloseDate() {
        // Create test opportunity
        Opportunity testOpp = new Opportunity(
            Name = 'Test Opportunity',
            StageName = 'Prospecting'
        );
        
        // Test default close date
        OpportunityManager.setDefaultCloseDate(testOpp);
        System.assertEquals(Date.today().addMonths(3), testOpp.CloseDate, 
            'Close date should be 3 months from today');
    }
}