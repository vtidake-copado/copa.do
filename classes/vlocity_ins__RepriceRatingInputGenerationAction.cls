/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class RepriceRatingInputGenerationAction {
    global RepriceRatingInputGenerationAction() {

    }
    @InvocableMethod(label='Generate Rating Inputs for RepriceProduct' description='Get rating inputs from the UserInputs for Large Group Quoting OS Flow for RepriceProduct')
    global static List<vlocity_ins.RepriceRatingInputGenerationAction.GenerateRepriceRatingInputsResponse> getRatingInputsFromUserInputs(List<vlocity_ins.RepriceRatingInputGenerationAction.GenerateRepriceRatingInputsRequest> requests) {
        return null;
    }
global class GenerateRepriceRatingInputsRequest {
    @InvocableVariable( required=false)
    global Boolean evalOptionalCoverageRelationship;
    @InvocableVariable( required=true)
    global List<String> familyUserInputs;
    @InvocableVariable( required=true)
    global String prodResultJson;
    @InvocableVariable( required=true)
    global String requestId;
    @InvocableVariable( required=false)
    global Boolean ruleAttributeSetValues;
    @InvocableVariable( required=false)
    global Boolean validateCoverageSelection;
    global GenerateRepriceRatingInputsRequest() {

    }
}
global class GenerateRepriceRatingInputsResponse {
    @InvocableVariable( required=false)
    global String familyRatingInputs;
    global GenerateRepriceRatingInputsResponse() {

    }
}
}
