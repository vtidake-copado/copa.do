/**
 * TODO: create a new and isolated Test class for this one. Currently it is using TestGlobalUtilities
 * for time saving purposes since behaviour can be asserted there as well.
 */
@SuppressWarnings('PMD.AvoidGlobalModifier')
global with sharing class UserStoryCounter {
    global class InvocableVariables {
        @InvocableVariable(label='Type (Ahead / Behind)' required=true)
        global String type;
        @InvocableVariable(label='Pipeline Id' required=true)
        global Id pipelineId;
        @InvocableVariable(label='Environment Id' required=true)
        global Id environmentId;
    }

    /**
     * Invocable method to allow users retrieve the number of User Stories ahead or behind for an environment in a pipeline.
     * @param  variables InvocableVariables
     * @return List<Integer>
     * @see InvocableVariable
     * @see InvocableMethod
     * @WARNING method may not behave as expected if one source environment is connected to two destinations in the same pipeline
     */
    @InvocableMethod(
        label='Get User Story Count'
        description='Gets the number of user stories ahead or behind (based on the provided type parameter), for the given pipeline and environment'
    )
    global static List<Integer> getUserStoryCount(List<InvocableVariables> variables) {
        InvocableVariables variable = variables[0];
        Promotions.CalculationServiceRequest request = new Promotions.CalculationServiceRequest();
        request.environmentId = variable.environmentId;
        request.pipelineId = variable.pipelineId;
        switch on variable.type.toUpperCase() {
            when 'AHEAD' {
                Promotions.CalculationServiceResult result = Promotions.CalculationService.calculateForwardPromotions(request);
                return new List<Integer>{ result.userStoryIds.size() };
            }
            when 'BEHIND' {
                Promotions.CalculationServiceResult result = Promotions.CalculationService.calculateBackwardPromotions(request);
                return new List<Integer>{ result.userStoryIds.size() };
            }
            when else {
                return null;
            }
        }
    }
}