public class OpportunityManager {
    
    // Modified discount calculation with minimum discount
    public static Decimal calculateDiscountedAmount(Opportunity opp, Decimal discountPercent) {
        if(opp != null && opp.Amount != null && discountPercent >= 5 && discountPercent <= 100) {
            Decimal discount = (discountPercent / 100) * opp.Amount;
            return opp.Amount - discount;
        }
        return opp.Amount; // Return original amount if conditions not met
    }
    
    public static void updateStageBasedOnProbability(Opportunity opp) {
        if(opp != null) {
            if(opp.Probability >= 90) {
                opp.StageName = 'Closing';
            } else if(opp.Probability >= 50) {
                opp.StageName = 'Negotiation';
            } else if(opp.Probability >= 25) {
                opp.StageName = 'Qualification';
            } else {
                opp.StageName = 'Prospecting';
            }
        }
    }
    
    // Added new method
    public static Boolean isHighValueOpportunity(Opportunity opp) {
        return (opp != null && opp.Amount != null && opp.Amount > 100000);
    }
}