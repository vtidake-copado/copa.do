@SuppressWarnings('PMD.CyclomaticComplexity')
public with sharing class CalculationServiceImpl {
    // NOTE ==> GlobalUtilitiesTest is covering this class

    private static final String SANDBOX_ENVIRONMENT_TYPE = 'Sandbox';

    // PUBLIC
    public static Promotions.CalculationServiceResult calculateForwardPromotions(Promotions.CalculationServiceRequest request) {
        Deployment_Flow_Step__c pipelineStep = getPipelineConnectionForEnvironment(request);
        validateCalculationRequest(pipelineStep.Deployment_Flow__r.Active__c);

        Integer queryRowThreshold = Limits.getLimitQueryRows() - Limits.getQueryRows();
        Set<Id> userStoryIds = new Set<Id>(
            new Map<Id, SObject>(
                    [
                        SELECT Id
                        FROM User_Story__c
                        WHERE
                            Exclude_From_CBM__c = FALSE
                            AND Status__c != 'Cancelled'
                            AND (Project__r.Deployment_Flow__c = :pipelineStep.Deployment_Flow__c
                            OR Release__r.Project__r.Deployment_Flow__c = :pipelineStep.Deployment_Flow__c)
                            AND Environment__c = :pipelineStep.Source_Environment__c
                            AND Promote_Change__c = TRUE
                        WITH USER_MODE
                        ORDER BY Name DESC
                        LIMIT :queryRowThreshold
                    ]
                )
                .keySet()
        );

        Promotions.CalculationServiceResult result = new Promotions.CalculationServiceResult();
        result.userStoryIds = userStoryIds;
        return result;
    }

    public static Promotions.CalculationServiceResult calculateBackwardPromotions(Promotions.CalculationServiceRequest request) {
        Deployment_Flow_Step__c pipelineStep = getPipelineConnectionForEnvironment(request);
        validateCalculationRequest(pipelineStep.Deployment_Flow__r.Active__c);

        Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryId = getPromotedUserStoriesGroupedByUserStory(
            new PromotedUserStoryQueryRequest()
                .setEnvironments(new Set<Id>{ pipelineStep.Destination_Environment__c })
                .setPipelineId(request.pipelineId)
        );

        Set<Id> userStoriesNeedingPromotionIds = identifyUserStoriesBehindInPipeline(
            new UserStoryPromotionCalculationRequest()
                .setRequest(request)
                .setPromotedUserStoriesByUserStoryId(promotedUserStoriesByUserStoryId)
                .setPipelineConnections(new List<Deployment_Flow_Step__c>{ pipelineStep })
        );

        Promotions.CalculationServiceResult result = new Promotions.CalculationServiceResult();
        result.userStoryIds = userStoriesNeedingPromotionIds;
        return result;
    }

    // NOTE ==> BackPromotionAwarenessTest class is covering test for this method
    public static Promotions.CalculationServiceResult calculateOutOfSyncBackwardPromotions(Promotions.CalculationServiceRequest request) {
        Deployment_Flow_Step__c pipelineStep = getPipelineConnectionForEnvironment(request);
        validateCalculationRequest(pipelineStep.Deployment_Flow__r.Active__c);

        Promotions.CalculationServiceResult result = new Promotions.CalculationServiceResult();
        BackPromotionAwareness.Request outOfSyncRequest = new BackPromotionAwareness.Request(request.pipelineId, request.environmentId);
        result.userStoryIds = BackPromotionAwareness.getOutOfSyncUserStories(outOfSyncRequest);
        return result;
    }

    // PRIVATE
    private static void validateCalculationRequest(Boolean isActive) {
        if (!isActive) {
            throw new ApplicationException(Label.DF_Inactive);
        }

        if (!FeatureHelper.isChangeChangeManagementEnabled()) {
            throw new ApplicationException(Label.Change_Management_Feature_Not_Enabled);
        }
    }

    private static Deployment_Flow_Step__c getPipelineConnectionForEnvironment(Promotions.CalculationServiceRequest request) {
        return [
            SELECT
                Destination_Environment__c,
                Deployment_Flow__c,
                Deployment_Flow__r.Active__c,
                Source_Environment__c,
                Source_Environment__r.Type__c,
                Source_Environment__r.Last_Refresh_Date__c,
                Source_Environment__r.CreatedDate
            FROM Deployment_Flow_Step__c
            WHERE Deployment_Flow__c = :request.pipelineId AND Source_Environment__c = :request.environmentId
            WITH USER_MODE
            LIMIT 1
        ];
    }

    private static Map<Id, List<Promoted_User_Story__c>> getPromotedUserStoriesGroupedByUserStory(PromotedUserStoryQueryRequest request) {
        Map<Id, List<Promoted_User_Story__c>> result = new Map<Id, List<Promoted_User_Story__c>>();
        Integer queryRowThreshold = Limits.getLimitQueryRows() - Limits.getQueryRows();

        List<Promoted_User_Story__c> promotedUserStories = [
            SELECT
                Id,
                Name,
                User_Story__c,
                User_Story__r.Name,
                User_Story__r.User_Story_Title__c,
                Promotion__r.Source_Environment__c,
                Promotion__r.Destination_Environment__c,
                Promotion__r.Back_Promotion__c,
                Promotion__r.CreatedDate,
                User_Story__r.Project__r.Name,
                User_Story__r.Release__r.Name,
                User_Story__r.Org_Credential__r.Org_Type__c,
                User_Story__r.Project__c,
                User_Story__r.Release__c
            FROM Promoted_User_Story__c
            WHERE
                Status__c != 'Outdated'
                AND User_Story__r.Exclude_From_CBM__c = FALSE
                AND (User_Story__r.Project__r.Deployment_Flow__c = :request.pipelineId
                OR User_Story__r.Release__r.Project__r.Deployment_Flow__c = :request.pipelineId)
                AND Promotion__r.Status__c = 'Completed'
                AND User_Story__r.Status__c != 'Cancelled'
                AND (Promotion__r.Destination_Environment__c IN :request.environments
                OR Promotion__r.Source_Environment__c IN :request.environments
                OR User_Story__r.Environment__c IN :request.environments)
            WITH USER_MODE
            ORDER BY Promotion__r.Back_Promotion__c DESC
            LIMIT :queryRowThreshold
        ];

        for (Promoted_User_Story__c promotedUserStory : promotedUserStories) {
            if (!result.containsKey(promotedUserStory.User_Story__c)) {
                result.put(promotedUserStory.User_Story__c, new List<Promoted_User_Story__c>{ promotedUserStory });
            } else {
                result.get(promotedUserStory.User_Story__c).add(promotedUserStory);
            }
        }

        return result;
    }

    private static Set<Id> identifyUserStoriesBehindInPipeline(UserStoryPromotionCalculationRequest calcRequest) {
        Set<Id> destinationIds = new Set<Id>();
        for (Deployment_Flow_Step__c pipelineConnection : calcRequest.pipelineConnections) {
            destinationIds.add(pipelineConnection.Destination_Environment__c);
        }

        EnvironmentAnalysisResult envResult = getFinalEnvironmentAndSourceEnvironments(calcRequest.request.pipelineId);
        categorizePromotedUserStoriesByEnvironment(envResult, calcRequest.promotedUserStoriesByUserStoryId);

        Map<Id, List<Promoted_User_Story__c>> destinationPromotedUserStoriesByUserStoryId = getPromotedUserStoriesGroupedByUserStory(
            new PromotedUserStoryQueryRequest().setEnvironments(destinationIds).setPipelineId(calcRequest.request.pipelineId)
        );

        UserStoryPromotionAnalysisResult usResult = analyzeUserStoryPromotions(
            new UserStoryPromotionAnalysisRequest()
                .setPromotedUserStoriesByUserStoryId(calcRequest.promotedUserStoriesByUserStoryId)
                .setDestinationPromotedUserStoriesByUserStoryId(destinationPromotedUserStoriesByUserStoryId)
                .setFinalEnvironmentId(envResult.finalEnvironmentId)
        );

        return identifyUserStoriesNeedingPromotion(
            new UserStoryPromotionEligibilityRequest()
                .setPromotedUserStoriesByUserStoryId(calcRequest.promotedUserStoriesByUserStoryId)
                .setPipelineConnections(calcRequest.pipelineConnections)
                .setUsResult(usResult)
                .setEnvResult(envResult)
        );
    }

    private static EnvironmentAnalysisResult getFinalEnvironmentAndSourceEnvironments(String pipelineId) {
        List<Deployment_Flow_Step__c> pipelineConnections = getPipelineConnectionsForPipeline(pipelineId);

        Set<Id> allDestinationEnvironmentIds = new Set<Id>();
        Set<Id> allSourceEnvironmentIds = new Set<Id>();

        for (Deployment_Flow_Step__c pipelineConnection : pipelineConnections) {
            allDestinationEnvironmentIds.add(
                pipelineConnection.Destination_Environment__c != null
                    ? pipelineConnection.Destination_Environment__c
                    : pipelineConnection.Destination_Branch__c
            );
            allSourceEnvironmentIds.add(
                pipelineConnection.Source_Environment__c != null ? pipelineConnection.Source_Environment__c : pipelineConnection.Branch__c
            );
        }

        String finalEnvironmentId = identifyFinalEnvironmentId(allDestinationEnvironmentIds, allSourceEnvironmentIds);

        return new EnvironmentAnalysisResult(finalEnvironmentId, allSourceEnvironmentIds);
    }

    private static String identifyFinalEnvironmentId(Set<Id> allDestinationEnvironmentIds, Set<Id> allSourceEnvironmentIds) {
        for (String environmentId : allDestinationEnvironmentIds) {
            if (!allSourceEnvironmentIds.contains(environmentId)) {
                return environmentId;
            }
        }
        return '';
    }

    private static List<Deployment_Flow_Step__c> getPipelineConnectionsForPipeline(Id pipelineId) {
        return [
            SELECT Source_Environment__c, Branch__c, Destination_Environment__c
            FROM Deployment_Flow_Step__c
            WHERE Deployment_Flow__c = :pipelineId
            WITH USER_MODE
        ];
    }

    private static void categorizePromotedUserStoriesByEnvironment(
        EnvironmentAnalysisResult envResult,
        Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryIds
    ) {
        Map<Id, Set<Id>> destinationEnvironmentIdsByUserStoryId = new Map<Id, Set<Id>>();
        Map<Id, Set<Id>> sourceEnvironmentIdsByUserStoryId = new Map<Id, Set<Id>>();

        for (Id userStoryId : promotedUserStoriesByUserStoryIds.keySet()) {
            Set<Id> destinationEnvironmentIds = new Set<Id>();
            Set<Id> sourceEnvironmentIds = new Set<Id>();
            for (Promoted_User_Story__c promotedUserStory : promotedUserStoriesByUserStoryIds.get(userStoryId)) {
                String destinationEnvironmentId = promotedUserStory.Promotion__r.Destination_Environment__c;
                String sourceEnvironmentId = promotedUserStory.Promotion__r.Source_Environment__c;

                if (promotedUserStory.Promotion__c != null) {
                    destinationEnvironmentIds.add(destinationEnvironmentId);
                    if (!promotedUserStory.Promotion__r.Back_Promotion__c) {
                        sourceEnvironmentIds.add(sourceEnvironmentId);
                    }
                }
            }
            destinationEnvironmentIdsByUserStoryId.put(userStoryId, destinationEnvironmentIds);
            sourceEnvironmentIdsByUserStoryId.put(userStoryId, sourceEnvironmentIds);
        }

        envResult.destinationEnvironmentIdsByUserStoryId = destinationEnvironmentIdsByUserStoryId;
        envResult.sourceEnvironmentIdsByUserStoryId = sourceEnvironmentIdsByUserStoryId;
    }

    private static UserStoryPromotionAnalysisResult analyzeUserStoryPromotions(UserStoryPromotionAnalysisRequest usRequest) {
        UserStoryPromotionAnalysisResult result = new UserStoryPromotionAnalysisResult();
        for (Id userStoryId : usRequest.promotedUserStoriesByUserStoryId.keySet()) {
            result.deployedToMasterByUserStoryIds.put(userStoryId, false);
            result.promotionSourceEnvironmentIdsByUserStoryIds.put(userStoryId, new Set<Id>());
            if (
                usRequest.destinationPromotedUserStoriesByUserStoryId.containsKey(userStoryId) ||
                usRequest.destinationPromotedUserStoriesByUserStoryId == null
            ) {
                processDestinationPromotedUserStories(
                    new UpdateUserStoryPromotionStatusRequest()
                        .setUserStoryId(userStoryId)
                        .setPromotedUserStories(usRequest.destinationPromotedUserStoriesByUserStoryId.get(userStoryId))
                        .setFinalEnvironmentId(usRequest.finalEnvironmentId)
                        .setResult(result)
                );
            }
        }

        return result;
    }

    private static void processDestinationPromotedUserStories(UpdateUserStoryPromotionStatusRequest request) {
        for (Promoted_User_Story__c promotedUserStory : request.promotedUserStories) {
            String destinationEnvironmentId = promotedUserStory.Promotion__r.Destination_Environment__c;
            String sourceEnvironmentId = promotedUserStory.Promotion__r.Source_Environment__c;
            Datetime promotedUserStoryCreatedDate = promotedUserStory.Promotion__r.CreatedDate;

            if (request.finalEnvironmentId == destinationEnvironmentId) {
                request.result.pusCreatedDateByUserStoryIds.put(request.userStoryId, promotedUserStoryCreatedDate);
                request.result.deployedToMasterByUserStoryIds.put(request.userStoryId, true);
            }
            request.result.promotionSourceEnvironmentIdsByUserStoryIds.get(request.userStoryId).add(sourceEnvironmentId);
        }
    }

    private static Set<Id> identifyUserStoriesNeedingPromotion(UserStoryPromotionEligibilityRequest usEnvironmentRequest) {
        Set<Id> userStoryIds = new Set<Id>();
        for (Id userStoryId : usEnvironmentRequest.promotedUserStoriesByUserStoryId.keySet()) {
            for (Deployment_Flow_Step__c pipelineConnection : usEnvironmentRequest.pipelineConnections) {
                if (
                    isUserStoryEligibleForPromotion(
                        new UserStoryPromotionEligibilityCheckRequest()
                            .setUserStoryId(userStoryId)
                            .setPipelineConnection(pipelineConnection)
                            .setEnvResult(usEnvironmentRequest.envResult)
                            .setUsResult(usEnvironmentRequest.usResult)
                    )
                ) {
                    userStoryIds.add(userStoryId);
                    break;
                }
            }
        }

        return userStoryIds;
    }

    private static Boolean isUserStoryEligibleForPromotion(UserStoryPromotionEligibilityCheckRequest request) {
        Boolean userStoryBackPromotedAllEnvironments =
            request.usResult.promotionSourceEnvironmentIdsByUserStoryIds.get(request.userStoryId).size() ==
            request.envResult.sourceEnvironmentIdsByUserStoryId.size();
        Boolean userStoryMovedToProduction = request.usResult.deployedToMasterByUserStoryIds.containsKey(request.userStoryId)
            ? request.usResult.deployedToMasterByUserStoryIds.get(request.userStoryId)
            : false;
        Datetime pusCreatedDate = userStoryMovedToProduction ? request.usResult.pusCreatedDateByUserStoryIds.get(request.userStoryId) : null;
        Boolean isSandboxEnvironment = request.pipelineConnection.Source_Environment__r.Type__c == SANDBOX_ENVIRONMENT_TYPE;
        Datetime environmentLastRefreshDate = request.pipelineConnection.Source_Environment__r.Last_Refresh_Date__c;
        Boolean isSandboxRefreshedBefore =
            isSandboxEnvironment &&
            userStoryMovedToProduction &&
            (environmentLastRefreshDate == null || (environmentLastRefreshDate != null && environmentLastRefreshDate < pusCreatedDate));
        Boolean environmentIsCreatedBefore = pusCreatedDate != null && request.pipelineConnection.Source_Environment__r.CreatedDate < pusCreatedDate;
        Boolean userStoryReachedToMaster = hasUserStoryReachedFinalEnvironment(
            new UserStoryFinalEnvironmentCheckRequest()
                .setUserStoryMovedToProduction(userStoryMovedToProduction)
                .setUserStoryBackPromotedAllEnvironments(userStoryBackPromotedAllEnvironments)
                .setEnvironmentIsCreatedBefore(environmentIsCreatedBefore)
                .setIsSandboxEnvironment(isSandboxEnvironment)
                .setIsSandboxRefreshedBefore(isSandboxRefreshedBefore)
        );

        return !request.envResult.destinationEnvironmentIdsByUserStoryId.get(request.userStoryId)
                .contains(request.pipelineConnection.Source_Environment__c) &&
            !request.envResult.sourceEnvironmentIdsByUserStoryId.get(request.userStoryId)
                .contains(request.pipelineConnection.Source_Environment__c) &&
            !userStoryReachedToMaster;
    }

    private static Boolean hasUserStoryReachedFinalEnvironment(UserStoryFinalEnvironmentCheckRequest request) {
        return (request.environmentIsCreatedBefore &&
            request.userStoryMovedToProduction &&
            request.userStoryBackPromotedAllEnvironments) ||
            (!request.environmentIsCreatedBefore &&
            !request.userStoryBackPromotedAllEnvironments &&
            request.userStoryMovedToProduction) ||
            (request.isSandboxEnvironment &&
            !request.isSandboxRefreshedBefore &&
            !request.userStoryBackPromotedAllEnvironments &&
            request.userStoryMovedToProduction);
    }

    // PARAMETER OBJECTS

    public class PromotedUserStoryQueryRequest {
        public Set<Id> environments;
        public Id pipelineId;

        public PromotedUserStoryQueryRequest setEnvironments(Set<Id> environments) {
            this.environments = environments;
            return this;
        }

        public PromotedUserStoryQueryRequest setPipelineId(Id pipelineId) {
            this.pipelineId = pipelineId;
            return this;
        }
    }

    public class UserStoryPromotionCalculationRequest {
        public Promotions.CalculationServiceRequest request;
        public Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryId;
        public List<Deployment_Flow_Step__c> pipelineConnections;

        public UserStoryPromotionCalculationRequest setRequest(Promotions.CalculationServiceRequest request) {
            this.request = request;
            return this;
        }

        public UserStoryPromotionCalculationRequest setPromotedUserStoriesByUserStoryId(
            Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryId
        ) {
            this.promotedUserStoriesByUserStoryId = promotedUserStoriesByUserStoryId;
            return this;
        }

        public UserStoryPromotionCalculationRequest setPipelineConnections(List<Deployment_Flow_Step__c> pipelineConnections) {
            this.pipelineConnections = pipelineConnections;
            return this;
        }
    }

    public class UserStoryPromotionAnalysisRequest {
        public Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryId;
        public Map<Id, List<Promoted_User_Story__c>> destinationPromotedUserStoriesByUserStoryId;
        public String finalEnvironmentId;

        public UserStoryPromotionAnalysisRequest setPromotedUserStoriesByUserStoryId(
            Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryId
        ) {
            this.promotedUserStoriesByUserStoryId = promotedUserStoriesByUserStoryId;
            return this;
        }

        public UserStoryPromotionAnalysisRequest setDestinationPromotedUserStoriesByUserStoryId(
            Map<Id, List<Promoted_User_Story__c>> destinationPromotedUserStoriesByUserStoryId
        ) {
            this.destinationPromotedUserStoriesByUserStoryId = destinationPromotedUserStoriesByUserStoryId;
            return this;
        }

        public UserStoryPromotionAnalysisRequest setFinalEnvironmentId(String finalEnvironmentId) {
            this.finalEnvironmentId = finalEnvironmentId;
            return this;
        }
    }

    public class UserStoryPromotionEligibilityRequest {
        public Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryId;
        public List<Deployment_Flow_Step__c> pipelineConnections;
        public UserStoryPromotionAnalysisResult usResult;
        public EnvironmentAnalysisResult envResult;

        public UserStoryPromotionEligibilityRequest setPromotedUserStoriesByUserStoryId(
            Map<Id, List<Promoted_User_Story__c>> promotedUserStoriesByUserStoryId
        ) {
            this.promotedUserStoriesByUserStoryId = promotedUserStoriesByUserStoryId;
            return this;
        }

        public UserStoryPromotionEligibilityRequest setPipelineConnections(List<Deployment_Flow_Step__c> pipelineConnections) {
            this.pipelineConnections = pipelineConnections;
            return this;
        }

        public UserStoryPromotionEligibilityRequest setUsResult(UserStoryPromotionAnalysisResult usResult) {
            this.usResult = usResult;
            return this;
        }

        public UserStoryPromotionEligibilityRequest setEnvResult(EnvironmentAnalysisResult envResult) {
            this.envResult = envResult;
            return this;
        }
    }

    public class UpdateUserStoryPromotionStatusRequest {
        public Id userStoryId;
        public List<Promoted_User_Story__c> promotedUserStories;
        public String finalEnvironmentId;
        public UserStoryPromotionAnalysisResult result;

        public UpdateUserStoryPromotionStatusRequest setUserStoryId(Id userStoryId) {
            this.userStoryId = userStoryId;
            return this;
        }

        public UpdateUserStoryPromotionStatusRequest setPromotedUserStories(List<Promoted_User_Story__c> promotedUserStories) {
            this.promotedUserStories = promotedUserStories;
            return this;
        }

        public UpdateUserStoryPromotionStatusRequest setFinalEnvironmentId(String finalEnvironmentId) {
            this.finalEnvironmentId = finalEnvironmentId;
            return this;
        }

        public UpdateUserStoryPromotionStatusRequest setResult(UserStoryPromotionAnalysisResult result) {
            this.result = result;
            return this;
        }
    }

    public class UserStoryPromotionEligibilityCheckRequest {
        public Id userStoryId;
        public Deployment_Flow_Step__c pipelineConnection;
        public UserStoryPromotionAnalysisResult usResult;
        public EnvironmentAnalysisResult envResult;

        public UserStoryPromotionEligibilityCheckRequest setUserStoryId(Id userStoryId) {
            this.userStoryId = userStoryId;
            return this;
        }

        public UserStoryPromotionEligibilityCheckRequest setPipelineConnection(Deployment_Flow_Step__c pipelineConnection) {
            this.pipelineConnection = pipelineConnection;
            return this;
        }

        public UserStoryPromotionEligibilityCheckRequest setUsResult(UserStoryPromotionAnalysisResult usResult) {
            this.usResult = usResult;
            return this;
        }

        public UserStoryPromotionEligibilityCheckRequest setEnvResult(EnvironmentAnalysisResult envResult) {
            this.envResult = envResult;
            return this;
        }
    }

    public class UserStoryFinalEnvironmentCheckRequest {
        public Boolean userStoryMovedToProduction;
        public Boolean userStoryBackPromotedAllEnvironments;
        public Boolean environmentIsCreatedBefore;
        public Boolean isSandboxEnvironment;
        public Boolean isSandboxRefreshedBefore;

        public UserStoryFinalEnvironmentCheckRequest setUserStoryMovedToProduction(Boolean userStoryMovedToProduction) {
            this.userStoryMovedToProduction = userStoryMovedToProduction;
            return this;
        }

        public UserStoryFinalEnvironmentCheckRequest setUserStoryBackPromotedAllEnvironments(Boolean userStoryBackPromotedAllEnvironments) {
            this.userStoryBackPromotedAllEnvironments = userStoryBackPromotedAllEnvironments;
            return this;
        }

        public UserStoryFinalEnvironmentCheckRequest setEnvironmentIsCreatedBefore(Boolean environmentIsCreatedBefore) {
            this.environmentIsCreatedBefore = environmentIsCreatedBefore;
            return this;
        }

        public UserStoryFinalEnvironmentCheckRequest setIsSandboxEnvironment(Boolean isSandboxEnvironment) {
            this.isSandboxEnvironment = isSandboxEnvironment;
            return this;
        }

        public UserStoryFinalEnvironmentCheckRequest setIsSandboxRefreshedBefore(Boolean isSandboxRefreshedBefore) {
            this.isSandboxRefreshedBefore = isSandboxRefreshedBefore;
            return this;
        }
    }

    public class EnvironmentAnalysisResult {
        public Id finalEnvironmentId;
        public Set<Id> allSourceEnvironments;
        public Map<Id, Set<Id>> destinationEnvironmentIdsByUserStoryId;
        public Map<Id, Set<Id>> sourceEnvironmentIdsByUserStoryId;

        public EnvironmentAnalysisResult(Id finalEnvironmentId, Set<Id> allSourceEnvironments) {
            this.finalEnvironmentId = finalEnvironmentId;
            this.allSourceEnvironments = allSourceEnvironments;
            this.destinationEnvironmentIdsByUserStoryId = new Map<Id, Set<Id>>();
            this.sourceEnvironmentIdsByUserStoryId = new Map<Id, Set<Id>>();
        }
    }

    public class UserStoryPromotionAnalysisResult {
        public Map<Id, Boolean> deployedToMasterByUserStoryIds;
        public Map<Id, Set<Id>> promotionSourceEnvironmentIdsByUserStoryIds;
        public Map<Id, Datetime> pusCreatedDateByUserStoryIds;

        public UserStoryPromotionAnalysisResult() {
            this.deployedToMasterByUserStoryIds = new Map<Id, Boolean>();
            this.promotionSourceEnvironmentIdsByUserStoryIds = new Map<Id, Set<Id>>();
            this.pusCreatedDateByUserStoryIds = new Map<Id, Datetime>();
        }
    }
}