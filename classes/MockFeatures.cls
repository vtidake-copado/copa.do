@SuppressWarnings('PMD.ApexCRUDViolation')
public with sharing class MockFeatures {
    public static List<Feature_Toggle__mdt> getRecords() {
        PermissionSet ps = new PermissionSet();
        ps.label = 'Feature Requirement PS';
        ps.name = 'FeatureRequirementPS';
        ps.PermissionsRunFlow = true;
        insert ps;

        PermissionSetGroup psg = new PermissionSetGroup();
        psg.masterlabel = 'Feature Requirement PSG';
        psg.developername = 'FeatureRequirementPSG';
        insert psg;

        psg = getPermissionSetGroup('FeatureRequirementPSG');

        // force calculation of the PSG if it is not already Updated
        if (psg.Status != 'Updated') {
            Test.calculatePermissionSetGroup(psg.Id);
        }

        List<Feature_Toggle__mdt> mockList = (List<Feature_Toggle__mdt>) JSON.deserialize(getFeaturesJson(), List<Feature_Toggle__mdt>.class);
        return mockList;
    }

    // PRIVATE
    private static String getFeaturesJson() {
        return getObjectJsonString()

            //  Set Mock Record Ids
            .replaceAll('FEATURE_GROUP_RECORD_ID', 'fg1')
            .replaceAll('FEATURE_RECORD_ID', 'f1')
            .replaceAll('REQUIREMENTS1_RECORD_ID', 'fr1')
            .replaceAll('REQUIREMENTS2_RECORD_ID', 'fr2')

            // Object Names
            .replaceAll('FEATURE_OBJECT_NAME', Schema.SObjectType.Feature_Toggle__mdt.getName())
            .replaceAll('FEATURE_GROUP_OBJECT_NAME', Schema.SObjectType.Feature_Toggle_Group__mdt.getName())
            .replaceAll('FEATURE_REQUIREMENTS_OBJECT_NAME', Schema.SObjectType.Feature_Toggle_Requirement__mdt.getName())

            // Field Names
            .replaceAll('FEATURE_GROUP_FIELD_NAME', Schema.sObjectType.Feature_Toggle__mdt.fields.Feature_Toggle_Group__c.getName())
            .replaceAll('FEATURE_FIELD_CUSTOM_PERMISSION_NAME', Schema.sObjectType.Feature_Toggle__mdt.fields.Custom_Permission_Name__c.getName())
            .replaceAll('FEATURE_GROUP_FIELD_TYPE', Schema.sObjectType.Feature_Toggle_Group__mdt.fields.Type__c.getName())
            .replaceAll('FEATURE_FIELD_NAME', Schema.sObjectType.Feature_Toggle_Requirement__mdt.fields.Feature_Toggle__c.getName())
            .replaceAll('FEATURE_REQUIREMENTS_FIELD_TYPE', Schema.sObjectType.Feature_Toggle_Requirement__mdt.fields.Type__c.getName())
            .replaceAll('FEATURE_REQUIREMENTS_FIELD_VALUE', Schema.sObjectType.Feature_Toggle_Requirement__mdt.fields.Value__c.getName())

            // Relationship Names
            .replaceAll(
                'FEATURE_GROUP_RELATIONSHIP_NAME',
                Schema.sObjectType.Feature_Toggle__mdt.fields.Feature_Toggle_Group__c.getRelationshipName()
            )
            .replaceAll('FEATURE_REQUIREMENTS_RELATIONSHIP_NAME', getChildRelationshipName());
    }

    private static String getObjectJsonString() {
        return '[ {' +
            '"attributes" : {' +
            '"type" : "FEATURE_OBJECT_NAME",' +
            '"url" : "/services/data/v60.0/sobjects/FEATURE_OBJECT_NAME/FEATURE_RECORD_ID"' +
            '},' +
            '"DeveloperName" : "Sample_Feature",' +
            '"MasterLabel" : "Sample Feature",' +
            '"FEATURE_FIELD_CUSTOM_PERMISSION_NAME" : "EnableCopadoPlanBasic",' +
            '"FEATURE_GROUP_FIELD_NAME" : "FEATURE_GROUP_RECORD_ID",' +
            '"Id" : "FEATURE_RECORD_ID",' +
            '"FEATURE_REQUIREMENTS_RELATIONSHIP_NAME" : {' +
            '"totalSize" : 2,' +
            '"done" : true,' +
            '"records" : [ {' +
            '"attributes" : {' +
            // Feature Requirements
            '"type" : "FEATURE_REQUIREMENTS_OBJECT_NAME",' +
            ' "url" : "/services/data/v60.0/sobjects/FEATURE_REQUIREMENTS_OBJECT_NAME/REQUIREMENTS1_RECORD_ID"' +
            '},' +
            '"FEATURE_FIELD_NAME" : "FEATURE_RECORD_ID",' +
            '"Id" : "REQUIREMENTS1_RECORD_ID",' +
            '"FEATURE_REQUIREMENTS_FIELD_TYPE" : "PermissionSet",' +
            '"FEATURE_REQUIREMENTS_FIELD_VALUE" : "FeatureRequirementPS"' +
            '},' +
            '{' +
            '"attributes" : {' +
            '"type" : "FEATURE_REQUIREMENTS_OBJECT_NAME",' +
            ' "url" : "/services/data/v60.0/sobjects/FEATURE_REQUIREMENTS_OBJECT_NAME/REQUIREMENTS2_RECORD_ID"' +
            '},' +
            '"FEATURE_FIELD_NAME" : "FEATURE_RECORD_ID",' +
            '"Id" : "REQUIREMENTS2_RECORD_ID",' +
            '"FEATURE_REQUIREMENTS_FIELD_TYPE" : "PermissionSetGroup",' +
            '"FEATURE_REQUIREMENTS_FIELD_VALUE" : "FeatureRequirementPSG"' +
            '} ]' +
            '},' +
            // Feature Group
            '"FEATURE_GROUP_RELATIONSHIP_NAME" : {' +
            '"attributes" : {' +
            '"type" : "FEATURE_GROUP_OBJECT_NAME",' +
            '"url" : "/services/data/v60.0/sobjects/FEATURE_GROUP_OBJECT_NAME/FEATURE_GROUP_RECORD_ID"' +
            '},' +
            '"Id" : "FEATURE_GROUP_RECORD_ID",' +
            '"MasterLabel" : "Sample Feature Group",' +
            '"DeveloperName" : "Sample_Feature_Group",' +
            '"FEATURE_GROUP_FIELD_TYPE" : "Tier"' +
            '}' +
            '} ]';
    }

    private static String getChildRelationshipName() {
        for (
            Schema.ChildRelationship childRelationship : Feature_Toggle__mdt.SObjectType.getDescribe(SObjectDescribeOptions.DEFAULT)
                .getChildRelationships()
        ) {
            if (childRelationship.getChildSObject() == Feature_Toggle_Requirement__mdt.sObjectType) {
                return childRelationship.getRelationshipName();
            }
        }

        return null;
    }

    private static PermissionSetGroup getPermissionSetGroup(String name) {
        return [SELECT Id, Status FROM PermissionSetGroup WHERE DeveloperName = :name];
    }
}