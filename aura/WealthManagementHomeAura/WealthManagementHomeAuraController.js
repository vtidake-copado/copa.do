({
    init : function(component, event, helper) {
		var actionAccount = component.get("c.getAccounts");
		actionAccount.setCallback(this, function(data) {
            var id = data.getReturnValue();
            if (id == "") {
                console.log('Specified Account is not present, selecting random record')
                var actionAccountNew = component.get("c.getAnyAccount");
                actionAccountNew.setCallback(this, function(data) {
                    var newId = data.getReturnValue();
                    
                    if (newId == "") {
                        component.set("v.no_record_account", "true");
                    } else {
                        component.set("v.no_record_account", "false");
                    }
                    
                    component.set("v.Account", newId);
                    var newFieldValue = component.get("v.Account");
            		console.log('Account selected (any) : ' + JSON.stringify(newFieldValue))		
                });
                $A.enqueueAction(actionAccountNew);
                
            } else {
                component.set("v.Account", id);
            	var fieldValue = component.get("v.Account");
            	console.log('Account selected : ' + JSON.stringify(fieldValue))	
            }            
		});
		$A.enqueueAction(actionAccount);
        
        var actionInteractionSummary = component.get("c.getInteractionSummary");
		actionInteractionSummary.setCallback(this, function(data) {
            var id = data.getReturnValue();
            
            if (id == "") {
            	component.set("v.no_record_interaction_summary", "true");
            } else {
                component.set("v.no_record_interaction_summary", "false");
            }
            
            component.set("v.InteractionSummary", id);
            var fieldValue = component.get("v.InteractionSummary");    
            console.log('InteractionSummary selected : ' + JSON.stringify(fieldValue))
		});
		$A.enqueueAction(actionInteractionSummary);
        
        var actionActionPlan = component.get("c.getActionPlan");
		actionActionPlan.setCallback(this, function(data) {
            var id = data.getReturnValue();
            
            if (id == "") {
            	component.set("v.no_record_action_plan", "true");
            } else {
                component.set("v.no_record_action_plan", "false");
            }
            
            component.set("v.ActionPlan", id);
            var fieldValue = component.get("v.ActionPlan");    
            console.log('ActionPlan selected : ' + JSON.stringify(fieldValue))
		});
		$A.enqueueAction(actionActionPlan);
        
        var actionHouseholdAccounts = component.get("c.getHouseholdAccounts");
		actionHouseholdAccounts.setCallback(this, function(data) {
            var id = data.getReturnValue();
            if (id == "") {
                console.log('Specified Household Account is not present, selecting random record')
                var actionHouseholdAccountsNew = component.get("c.getAnyHouseholdAccount");
                actionHouseholdAccountsNew.setCallback(this, function(data) {
                    var newId = data.getReturnValue();
                    
                    if (newId == "") {
                        component.set("v.no_record_household_account", "true");
                    } else {
                        component.set("v.no_record_household_account", "false");
                    }
                    
                    component.set("v.HouseholdAccount", newId);
                    var newFieldValue = component.get("v.HouseholdAccount");
            		console.log('Household Account selected (any) : ' + JSON.stringify(newFieldValue))		
                });
                $A.enqueueAction(actionHouseholdAccountsNew);
                
            } else {
                component.set("v.HouseholdAccount", id);
            	var fieldValue = component.get("v.HouseholdAccount");
            	console.log('Household Account selected : ' + JSON.stringify(fieldValue))	
            }	
		});
		$A.enqueueAction(actionHouseholdAccounts);
        
        var actionFinancialDeal = component.get("c.getFinancialDeal");
		actionFinancialDeal.setCallback(this, function(data) {
            var id = data.getReturnValue();
            
            if (id == "") {
            	component.set("v.no_record_financial_deal", "true");
            } else {
                component.set("v.no_record_financial_deal", "false");
            }
            
            component.set("v.FinancialDeal", id);
            var fieldValue = component.get("v.FinancialDeal");    
            console.log('Financial Deal selected : ' + JSON.stringify(fieldValue))			
		});
		$A.enqueueAction(actionFinancialDeal);
	}
})