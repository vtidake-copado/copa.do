public with sharing class CommitDataIntermediaryCtrl {
    @TestVisible
    private static final string SFDX_PLATFORM = 'SFDX';
    @TestVisible
    private static final string NEXTGEN_DD_PLATFORM = 'NextGenDD';
    @TestVisible
    private static final string DATA_COMMIT_PAGE = 'CommitDataPage';

    //PUBLIC

    @AuraEnabled
    public static string getCommitDataPageNameFromSettings(Id userstoryId) {
        String result;
        List<User_Story__c> userstories = new UserStoriesSelector().byIdsForMulticloud(new Set<Id>{ userstoryId });
        if (!userstories.isEmpty() && userstories[0]?.Platform__c == SFDX_PLATFORM) {
            List<ExtensionKeyValueSetting__mdt> dataCommitPageSettings = new ExtensionKeyValueSettingsSelector()
                .byPlatformAndKey(NEXTGEN_DD_PLATFORM, DATA_COMMIT_PAGE);
            result = !dataCommitPageSettings.isEmpty() ? dataCommitPageSettings[0].Value__c : result;
        }
        return result;
    }
}