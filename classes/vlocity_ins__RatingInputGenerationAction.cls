/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class RatingInputGenerationAction {
    global RatingInputGenerationAction() {

    }
    @InvocableMethod(label='Generate Rating Inputs' description='Get rating inputs from the UserInputs for Large Group Quoting OS Flow')
    global static List<vlocity_ins.RatingInputGenerationAction.GenerateRatingInputsResponse> getRatingInputsFromUserInputs(List<vlocity_ins.RatingInputGenerationAction.GenerateRatingInputsRequest> requests) {
        return null;
    }
global class GenerateRatingInputsRequest {
    @InvocableVariable( required=false)
    global String additionalInputs;
    @InvocableVariable( required=true)
    global List<String> familyUserInputs;
    @InvocableVariable( required=true)
    global String productId;
    @InvocableVariable( required=true)
    global String requestId;
    @InvocableVariable( required=false)
    global Boolean ruleAttributeSetValues;
    global GenerateRatingInputsRequest() {

    }
}
global class GenerateRatingInputsResponse {
    @InvocableVariable( required=false)
    global String familyRatingInputs;
    global GenerateRatingInputsResponse() {

    }
}
}
