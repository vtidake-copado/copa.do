@SuppressWarnings('PMD')
public with sharing class OrgTriggerHelper {
    public static List<Environment__c> environments;

    private static Boolean sched = false;
    private static List<String> idsToRemoveAttach = new List<String>();
    private static Map<String, Environment__c> environmentsBySFDCOrgIds;
    private static Map<String, String> environmentNameByCredentialId;
    private static Map<String, List<Org__c>> credentialByEnvironmentId;

    // PUBLIC

    public static void prepareData(List<SObject> records) {
        environments = new List<Environment__c>();
        environmentsBySFDCOrgIds = new Map<String, Environment__c>();
        credentialByEnvironmentId = new Map<String, List<Org__c>>();
        environmentNameByCredentialId = new Map<String, String>();
        Set<String> orgIds = new Set<String>();

        for (SObject so : records) {
            Org__c credentialRecord = (Org__c) so;
            String sfdcOrgId = extractOrgId((String) credentialRecord.SFDC_Org_ID__c);

            if (sfdcOrgId != null) {
                orgIds.add(sfdcOrgId);
            }
        }

        if (!orgIds.isEmpty()) {
            upsertEnvironments(orgIds, records);
        }

        populateCredentialMap(records);
    }

    public static Boolean isScheduled(Org__c credentialRecord) {
        if (
            credentialRecord.Test_Frequency__c != null &&
            credentialRecord.Test_Frequency__c != 'None' &&
            credentialRecord.Validated_Date__c != null
        ) {
            sched = true;
            return true;
        }

        return false;
    }

    public static void checkApexTest(Org__c credentialRecord) {
        if (isScheduled(credentialRecord) && !FeatureHelper.isFeatureEnabled('Apex Test')) {
            credentialRecord.Test_Frequency__c = 'None';
        }
    }

    public static void enforceScheduler() {
        if (sched) {
            BatchHelper.enforceScheduler();
        }
    }

    public static void isMetadataChanged(Org__c credentialRecord, Org__c oldcredentialRecord) {
        if (oldcredentialRecord.Metadata_Types__c != credentialRecord.Metadata_Types__c) {
            idsToRemoveAttach.add(credentialRecord.Id);
        }
    }

    public static void deleteMetadataAttachments() {
        Utilities.Secure_DML(
            [SELECT Id FROM Attachment WHERE ParentId = :idsToRemoveAttach AND Name = 'MetaData'],
            Utilities.DML_Action.DEL,
            schema.SObjectType.Attachment
        );
    }

    public static void setOrgEnvironment(Org__c newCredentialRecord) {
        String newId = extractOrgId(newCredentialRecord.SFDC_Org_ID__c);

        if (newId != null && environmentsBySFDCOrgIds.containsKey(newId)) {
            newCredentialRecord.Environment__c = environmentsBySFDCOrgIds.get(newId).Id;
        }
    }

    public static void verifyDefaultCredExist(List<Org__c> credentials) {
        if (!credentialByEnvironmentId.isEmpty()) {
            for (Org__c record : credentials) {
                if (record.Default_Credential__c) {
                    List<Org__c> credRecords = credentialByEnvironmentId.get(record.Environment__c);

                    if (credRecords != null && !credRecords.isEmpty()) {
                        List<String> credNames = new List<String>();

                        for (Org__c defaultCredRecord : credRecords) {
                            credNames.add(defaultCredRecord.Name);
                        }
                        record.addError(
                            String.format(
                                Label.DefaultCredentailValidation,
                                new List<String>{ environmentNameByCredentialId.get(record.Id), String.join(credNames, ', ') }
                            )
                        );
                    }
                }
            }
        }
    }

    // PRIVATE

    private static String extractOrgId(String sfdxOrgId) {
        if (String.isEmpty(sfdxOrgId)) {
            return null;
        }

        if (sfdxOrgId.length() >= 37 && sfdxOrgId.contains('_')) {
            return sfdxOrgId.split('_')[0];
        }

        if (sfdxOrgId.length() == 18 && sfdxOrgId.startsWith('00D')) {
            return sfdxOrgId;
        }

        return null;
    }

    private static void populateEnvironmentMap(Set<String> orgIds) {
        for (Environment__c environmentRecord : [SELECT Id, Name, Org_ID__c FROM Environment__c WHERE Org_ID__c IN :orgIds]) {
            environmentsBySFDCOrgIds.put(environmentRecord.Org_ID__c, environmentRecord);
        }
    }

    private static void populateCredentialMap(List<SObject> records) {
        Set<String> environmentIds = new Set<String>();

        for (SObject so : records) {
            Org__c credentialRecord = (Org__c) so;

            if (credentialRecord.Environment__c != null) {
                environmentIds.add(credentialRecord.Environment__c);
            }
        }

        if (!environmentIds.isEmpty()) {
            for (Org__c credentialRecord : [
                SELECT Id, Name, Default_Credential__c, Environment__c, Environment__r.Name
                FROM Org__c
                WHERE Environment__c IN :EnvironmentIds
                WITH SYSTEM_MODE
            ]) {
                environmentNameByCredentialId.put(credentialRecord.Id, credentialRecord.Environment__r.Name);

                if (!credentialByEnvironmentId.containsKey(credentialRecord.Environment__c) && credentialRecord.Default_Credential__c) {
                    credentialByEnvironmentId.put(credentialRecord.Environment__c, new List<Org__c>{ credentialRecord });
                } else if (credentialRecord.Default_Credential__c) {
                    credentialByEnvironmentId.get(credentialRecord.Environment__c).add(credentialRecord);
                }
            }
        }
    }

    private static void upsertEnvironments(Set<String> orgIds, List<SObject> records) {
        populateEnvironmentMap(orgIds);

        for (SObject so : records) {
            Org__c newOrg = (Org__c) so;
            String extractedOrgId = extractOrgId((String) newOrg.SFDC_Org_ID__c);
            if (!environmentsBySFDCOrgIds.containsKey(extractedOrgId)) {
                Environment__c newEnvironment = new Environment__c();

                if (newOrg.Environment__c != null) {
                    newEnvironment.Id = newOrg.Environment__c;
                } else {
                    newEnvironment.Name = newOrg.Name;
                }
                newEnvironment.Type__c = newOrg.Org_Type__c;
                newEnvironment.Org_ID__c = extractedOrgId;

                if (String.isNotEmpty(newOrg.Platform__c)) {
                    newEnvironment.Platform__c = newOrg.Platform__c;
                }

                environments.add(newEnvironment);
            }
        }
        upsert environments;
        populateEnvironmentMap(orgIds);
    }
}