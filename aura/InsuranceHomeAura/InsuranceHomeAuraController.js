({
	init : function(component, event, helper) {
		var actionAccount = component.get("c.getAccounts");
		actionAccount.setCallback(this, function(data) {
            var id = data.getReturnValue();
            component.set("v.Account", id);
            var fieldValue = component.get("v.Account");    
            console.log('Account selected : ' + JSON.stringify(fieldValue))			
		});
		$A.enqueueAction(actionAccount);
	}
})