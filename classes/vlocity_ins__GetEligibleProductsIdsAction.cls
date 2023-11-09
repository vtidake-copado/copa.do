/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class GetEligibleProductsIdsAction {
    global GetEligibleProductsIdsAction() {

    }
    @InvocableMethod(label='Get Eligible Products' description='Get products Ids after filtering products based on eligibility rules')
    global static List<vlocity_ins.GetEligibleProductsIdsAction.GetEligibleProductsResponse> filterEligibleProductsByEligibilityRules(List<vlocity_ins.GetEligibleProductsIdsAction.GetEligibleProductsRequest> requests) {
        return null;
    }
global class GetEligibleProductsRequest {
    @InvocableVariable( required=false)
    global String additionalinputs;
    @InvocableVariable( required=false)
    global String attributeFilters;
    @InvocableVariable( required=false)
    global String pricebookId;
    @InvocableVariable( required=true)
    global List<String> productIds;
    @InvocableVariable( required=true)
    global String userInputs;
    global GetEligibleProductsRequest() {

    }
}
global class GetEligibleProductsResponse {
    @InvocableVariable( required=false)
    global List<String> eligibleProductIds;
    global GetEligibleProductsResponse() {

    }
}
}
