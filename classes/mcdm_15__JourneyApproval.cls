/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class JourneyApproval {
    global Map<String,String> activityIdToSubmissionId {
        get;
        set;
    }
    global Map<String,String> campaignMemberFields {
        get;
        set;
    }
    global String campaignMemberId {
        get;
    }
    global Map<String,String> customData {
        get;
        set;
    }
    global String dmTrackingId {
        get;
        set;
    }
    global String entryObjectId {
        get;
        set;
    }
    global String errorMessage {
        get;
        set;
    }
    global String externalJourneyId {
        get;
        set;
    }
    global mcdm_15.Option greeting {
        get;
        set;
    }
    global String includeSignature {
        get;
        set;
    }
    global String linkedBusinessUnitId {
        get;
        set;
    }
    global Map<String,Map<String,mcdm_15.BlockP13n>> messages {
        get;
        set;
    }
    global List<String> messageType {
        get;
        set;
    }
    global String mobileCustomField {
        get;
        set;
    }
    global String objectId {
        get;
        set;
    }
    global String objectType {
        get;
        set;
    }
    global String quickSendId {
        get;
        set;
    }
    global Datetime schedule {
        get;
        set;
    }
    global String sendFrom {
        get;
        set;
    }
    global String sfUserId {
        get;
        set;
    }
    global String smsValue {
        get;
        set;
    }
    global JourneyApproval() {

    }
    global JourneyApproval(String dmTrackingId) {

    }
    global static mcdm_15.JourneyApproval deserialize(String approval) {
        return null;
    }
    global static List<mcdm_15.JourneyApproval> deserializeList(String approvalsJson) {
        return null;
    }
}
