({
	rerender : function(cmp, helper){
        const recordId = cmp.get('v.recordId');
        const namespace = cmp.get('v.namespace');
        let defaultJobStepUrl = `lightning/r/${namespace}JobStep__c/${recordId}/edit`;
        if(window.location.href.indexOf(defaultJobStepUrl) > -1){
            let rerender = this.superRerender();
            let counter = cmp.get("v.counter");
            if(!counter){
                cmp.set("v.counter", 1);
                helper.init(cmp);
                return rerender;
            }
        }
    }
})