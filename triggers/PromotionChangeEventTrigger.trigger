trigger PromotionChangeEventTrigger on Promotion__ChangeEvent(after insert) {
    List<Promotion__ChangeEvent> changes = Trigger.new;
    String COMPLETED = 'Completed';
    Set<String> pceIds = new Set<String>();
    List<String> recordIds;
    //Get all record Ids for this change and add it to a set for further processing
    String commitUserId;
    for (Promotion__ChangeEvent pce : changes) {
        if (pce.Status__c == COMPLETED) {
            commitUserId = pce.ChangeEventHeader.getCommitUser();
            recordIds = pce.ChangeEventHeader.getRecordIds();
            pceIds.addAll(recordIds);
        }
    }

    if (pceIds.size() > 0) {
        List<Promotion__c> completedPromotions = Database.query(
            'SELECT Id, OwnerId, Back_Promotion__c, Source_Org_Credential__c, Destination_Org_Credential__c, Destination_Environment__c, Source_Environment__c,  Release__c, Release__r.Project__c, Release__r.Project__r.Deployment_Flow__c, Project__c, Project__r.Deployment_Flow__c FROM Promotion__c WHERE Status__c =:COMPLETED AND Id IN : pceIds AND (Project__r.Deployment_Flow__r.Platform__c = NULL OR Project__r.Deployment_Flow__r.Platform__c = \'Salesforce\')'
        );
        if(!completedPromotions.isEmpty()) {
            PromotionChangeEventTriggerHandler.commitUserId = commitUserId;
            PromotionChangeEventTriggerHandler.connectionBehaviorIsOnEnvironmentLevel = true;
            PromotionChangeEventTriggerHandler.ccdCheckForAutomatedBackPromotions(completedPromotions, null);
            // Checking for automated forward promotions if configured in the connection behaviour.
            // When the promotion get completed, or created, check for next connection behavior if it is automated and promote
            if(!PromotionChangeEventTriggerHandler.userStoryIdsForForwardPromotionSet.isEmpty()) {
                UserStoryChangeEventTriggerHandler.ccdCheckConnectionBehaviorAndPromote(
                    PromotionChangeEventTriggerHandler.userStoryIdsForForwardPromotionSet,
                    commitUserId,
                    true,
                    null
                );
            }
        }
        
    }
}