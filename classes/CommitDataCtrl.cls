@SuppressWarnings('PMD.ExcessiveParameterList')
public with sharing class CommitDataCtrl {
    @AuraEnabled
    public static Id commitData(
        Id userStoryId,
        String sourceType,
        Id dataTemplateId,
        Id dataSetId,
        String commitMessage,
        List<DataFilter> filters,
        String filterLogic
    ) {
        try {
            DataCommitRequest commitRequest = new DataCommitRequest()
                .userStoryId(userStoryId)
                .sourceType(sourceType)
                .dataTemplateId(dataTemplateId)
                .dataSetId(dataSetId)
                .commitMessage(commitMessage)
                .filters(filters)
                .filterLogic(filterLogic);

            Id result = new DataCommitter(commitRequest).execute();
            return result;
        } catch (Exception e) {
            throw new ApplicationException().auraHandled(e);
        }
    }

    @AuraEnabled(cacheable=true)
    public static DataFiltersConfiguration getDataTemplateFiltersConfiguration(Id dataTemplateId) {
        try {
            DataTemplatesService service = new DataTemplatesService(new Set<Id>{ dataTemplateId });
            DataFiltersConfiguration result = service.getFiltersConfiguration(dataTemplateId);
            return result;
        } catch (Exception e) {
            throw new ApplicationException().auraHandled(e);
        }
    }

    @AuraEnabled
    public static Boolean validateOrgCredential(Id orgCredId){
        try {
             return ValidateOrgAction.execute(orgCredId);
        } catch (Exception e) {
            throw new ApplicationException().auraHandled(e);
        }
    }

    @AuraEnabled
    public static string getQueryFilters(List<DataFilter> filters){
        try {
            List<QueryEditor.CriteriaWrapper> result = new List<QueryEditor.CriteriaWrapper>();
            for (DataFilter filter : filters) {
                result.add(filter.toQueryCriteria());
            }
            return JSON.serialize(result);
        } catch (Exception e) {
            throw new ApplicationException().auraHandled(e);
        }
    }
}