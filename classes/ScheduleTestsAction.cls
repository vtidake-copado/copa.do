@SuppressWarnings('PMD.AvoidGlobalModifier')
global with sharing class ScheduleTestsAction {
    // GLOBAL

    @InvocableMethod(
        label='Schedule a List of Copado Tests'
        description='Extracts and Schedules a list of Copado Tests of a specific type'
        category='Copado Test'
    )
    global static List<RunTestsAction.Response> execute(List<RunTestsAction.Request> requests) {
        Actions.ScheduleTestRequest scheduleTestRequest = convertRequests(requests);
        Actions.ScheduleTestResult scheduleTestResult = Actions.RunTestService.schedule(scheduleTestRequest);
        return convertResult(scheduleTestResult);
    }

    // PRIVATE

    private static Actions.ScheduleTestRequest convertRequests(List<RunTestsAction.Request> requests) {
        if (requests.size() != 1) {
            throw new ApplicationException(Label.OnlyOneRequestAvailable);
        }
        RunTestsAction.Request request = requests[0];

        Actions.ScheduleTestRequest result = new Actions.ScheduleTestRequest();
        result.tool = request.tool;
        result.contextIds = request.contextIds;
        result.extensionConfigurationId = request.extensionConfigurationId;
        result.resultId = request.resultId;
        result.acceptanceCriteria = request.acceptanceCriteria;
        result.environmentId = request.environmentId;
        result.transactionId = request.transactionId;
        result.actionCallback = request.actionCallback;
        result.credentialId = request.credentialId;
        result.cronExpression = request.cronExpression;
        result.scheduledJobId = request.scheduledJobId;
        return result;
    }

    private static List<RunTestsAction.Response> convertResult(Actions.ScheduleTestResult scheduleTestResult) {
        return new List<RunTestsAction.Response>{ new RunTestsAction.Response(scheduleTestResult.scheduledJob) };
    }
}