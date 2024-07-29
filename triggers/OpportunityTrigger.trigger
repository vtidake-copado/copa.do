// OpportunityTrigger.apex

trigger OpportunityTrigger on Opportunity (before insert, before update) {
    for (Opportunity opp : Trigger.new) {
        // Check the value of the "Amount" field and update the "Stage" field accordingly
        if (opp.Amount >= 5000) {
            opp.StageName = 'Closed Won';
        } else {
            opp.StageName = 'Prospecting';
        }
    }
}