public with sharing class GetConflictingMetadatasFromBundle {
    private static final String DELETE_ACTION = 'delete';

    private Id packageVersionId;

    // CONSTRUCTOR

    public GetConflictingMetadatasFromBundle(Id packageVersionId) {
        this.packageVersionId = packageVersionId;
    }

    // PUBLIC

    public List<User_Story_Metadata__c> execute() {
        List<User_Story_Metadata__c> result = new List<User_Story_Metadata__c>();
        Map<String, List<User_Story_Metadata__c>> userStoryMetadatasByNameAndType = new Map<String, List<User_Story_Metadata__c>>();
        Map<String, Set<String>> userStoryMetadataActionsByNameAndType = new Map<String, Set<String>>();
        validatePackageVersionId();
        Set<Id> userStoryIds = getUserStoryIds();
        List<User_Story_Metadata__c> userStoryMetadatas = getUserStoryMetadatas(userStoryIds);
        groupUserStoryMetadata(userStoryMetadatas, userStoryMetadatasByNameAndType, userStoryMetadataActionsByNameAndType);
        result = findConflictingUserStoryMetadatas(userStoryMetadatasByNameAndType, userStoryMetadataActionsByNameAndType);
        return result;
    }

    // PRIVATE

    private void validatePackageVersionId() {
        if (String.isBlank(this.packageVersionId)) {
            throw new ApplicationException(Label.Invalid_Package_Version_Id);
        }
    }

    private Set<Id> getUserStoryIds() {
        Set<Id> result = new Set<Id>();
        for (Bundled_Story__c bundledStory : new BundledStorySelector().byPackageVersion(new Set<Id>{ this.packageVersionId })) {
            result.add(bundledStory.User_Story__c);
        }
        return result;
    }

    private List<User_Story_Metadata__c> getUserStoryMetadatas(Set<Id> userStoryIds) {
        List<User_Story_Metadata__c> result = new List<User_Story_Metadata__c>();
        if (userStoryIds.isEmpty()) {
            return result;
        }

        result = new UserStoryMetadataSelector().byUserStoryIds(userStoryIds);
        return result;
    }

    private void groupUserStoryMetadata(
        List<User_Story_Metadata__c> userStoryMetadatas,
        Map<String, List<User_Story_Metadata__c>> userStoryMetadatasByNameAndType,
        Map<String, Set<String>> userStoryMetadataActionsByNameAndType
    ) {
        for (User_Story_Metadata__c userStoryMetadata : userStoryMetadatas) {
            String metadataNameAndType = getMetadataNameAndType(userStoryMetadata);
            groupUserStoryMetadataByNameAndType(metadataNameAndType, userStoryMetadata, userStoryMetadatasByNameAndType);
            groupUserStoryMetadataActionByNameAndType(metadataNameAndType, userStoryMetadata, userStoryMetadataActionsByNameAndType);
        }
    }

    private List<User_Story_Metadata__c> findConflictingUserStoryMetadatas(
        Map<String, List<User_Story_Metadata__c>> userStoryMetadatasByNameAndType,
        Map<String, Set<String>> userStoryMetadataActionsByNameAndType
    ) {
        List<User_Story_Metadata__c> result = new List<User_Story_Metadata__c>();
        for (String metadataNameAndType : getMetadatasNameAndType(userStoryMetadatasByNameAndType)) {
            if (isConflictingMetadataCombination(metadataNameAndType, userStoryMetadataActionsByNameAndType)) {
                result.addAll(userStoryMetadatasByNameAndType.get(metadataNameAndType));
            }
        }
        return result;
    }

    private String getMetadataNameAndType(User_Story_Metadata__c userStoryMetadata) {
        String result = userStoryMetadata.Metadata_API_Name__c + userStoryMetadata.Type__c;
        result = result?.toLowerCase();
        return result;
    }

    private void groupUserStoryMetadataByNameAndType(
        String metadataNameAndType,
        User_Story_Metadata__c userStoryMetadata,
        Map<String, List<User_Story_Metadata__c>> userStoryMetadatasByNameAndType
    ) {
        if (!userStoryMetadatasByNameAndType.containsKey(metadataNameAndType)) {
            userStoryMetadatasByNameAndType.put(metadataNameAndType, new List<User_Story_Metadata__c>());
        }
        userStoryMetadatasByNameAndType.get(metadataNameAndType).add(userStoryMetadata);
    }

    private void groupUserStoryMetadataActionByNameAndType(
        String metadataNameAndType,
        User_Story_Metadata__c userStoryMetadata,
        Map<String, Set<String>> userStoryMetadataActionsByNameAndType
    ) {
        if (!userStoryMetadataActionsByNameAndType.containsKey(metadataNameAndType)) {
            userStoryMetadataActionsByNameAndType.put(metadataNameAndType, new Set<String>());
        }
        userStoryMetadataActionsByNameAndType.get(metadataNameAndType).add(userStoryMetadata.Action__c?.toLowerCase());
    }

    /* 
        If a metadata is present more than once in user story metadata record with 'Delete' action
        in combination with other actions for user story bundle, then it is considered as a conflicting combination
    */
    private Boolean isConflictingMetadataCombination(String metadataNameAndType, Map<String, Set<String>> userStoryMetadataActionsByNameAndType) {
        Boolean result =
            userStoryMetadataActionsByNameAndType.containsKey(metadataNameAndType) &&
            userStoryMetadataActionsByNameAndType.get(metadataNameAndType).size() > 1 &&
            userStoryMetadataActionsByNameAndType.get(metadataNameAndType).contains(DELETE_ACTION);
        return result;
    }

    private List<String> getMetadatasNameAndType(Map<String, List<User_Story_Metadata__c>> userStoryMetadatasByNameAndType) {
        List<String> result = new List<String>();
        if (userStoryMetadatasByNameAndType.isEmpty()) {
            return result;
        }

        result = new List<String>(userStoryMetadatasByNameAndType.keySet());
        result.sort();
        return result;
    }
}