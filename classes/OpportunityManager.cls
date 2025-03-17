public class OpportunityManager {
    
    // Method to calculate opportunity value with discount
    public static Decimal calculateDiscountedAmount(Opportunity opp, Decimal discountPercent) {
        if(opp != null && opp.Amount != null && discountPercent >= 0 && discountPercent <= 100) {
            Decimal discount = (discountPercent / 100) * opp.Amount;
            return opp.Amount - discount;
        }
        return 0;
    }
    
    // Method to update opportunity stage based on probability
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
    
    // Method to set default close date
    public static void setDefaultCloseDate(Opportunity opp) {
        if(opp != null) {
            opp.CloseDate = Date.today().addMonths(3);
        }
    }
}