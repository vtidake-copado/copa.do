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
        
		var actionResidentialLoanApplication = component.get("c.getResidentialLoanApplication");
		actionResidentialLoanApplication.setCallback(this, function(data) {
            var id = data.getReturnValue();
            
            if (id == "") {
            	component.set("v.no_record_loan_application", "true");
            } else {
                component.set("v.no_record_loan_application", "false");
            }
            
            component.set("v.ResidentialLoanApplication", id);
            var fieldValue = component.get("v.ResidentialLoanApplication");    
            console.log('ResidentialLoanApplication selected : ' + JSON.stringify(fieldValue))			
		});
		$A.enqueueAction(actionResidentialLoanApplication);
	}
})