@IsTest

public with sharing class VIEWS_SACoverSheetShareSelectorTest {

 /* @IsTest

  static void newInstance_shouldReturnInstance() {

 

     Test.startTest();

    VIEWS_ISACoverSheetShareSelector result = VIEWS_SACoverSheetShareSelector.newInstance();

    Test.stopTest();

 

    System.assertNotEquals(null, result, 'Should return instance');

 

  }

 

  @IsTest

  static void testSelectById() {

     

    //Test Data

    //1. Insert Users

    User testUser = VIEWS_TestUtility.buildVIEWSTestUserByFirstAndLastName('Test', 'User');

    insert testUser;  

 

    User testUser2 = VIEWS_TestUtility.buildVIEWSTestUserByFirstAndLastName('Test2', 'User2');

    insert testUser2;  

 

    //2. Insert Case with OwnerId = User

    Id caseRecordTypeId = Schema.SObjectType.Case.getRecordTypeInfosByName().get('Investigations and Audits').getRecordTypeId();

    Case testCase = new Case(

      RecordTypeId = caseRecordTypeId,

      Views_GAO_Job_Code__c = '123',

      Views_Received_Date__c = DateTime.now(),

      Status = 'Acknowledgement Sent',

      Subject = 'test',

      VIEWS_Responsible_Organization__c ='00 OSVA Office of the Secretary',

      Views_Case_Sensitivity__c = 'Sensitive',

      OwnerId = testUser.Id

    );

    insert testCase;

 

    //3. Insert SA Cover Sheet

    VIEWS_SA_Cover_Sheet__c saCoverSheet = VIEWS_TestUtility.createSummaryAndApprovalCoverSheetForm(testCase.Id);

    insert saCoverSheet;     

 

    //4. Insert VIEWS_SA_Cover_Sheet__Share with Case

    VIEWS_SA_Cover_Sheet__Share testSAcoverSheetShare = new VIEWS_SA_Cover_Sheet__Share (

      AccessLevel = 'Read',   

      RowCause = 'Manual',

      ParentId = saCoverSheet.Id,

      UserOrGroupId = testUser2.Id

    );

    insert testSAcoverSheetShare;

 

    //5. Run the query

    List<VIEWS_SA_Cover_Sheet__Share> saCoverSheetShareList = VIEWS_SACoverSheetShareSelector.newInstance().selectById(new Set<Id> {testSAcoverSheetShare.Id});

 

    //6. Validate

    System.assertEquals(1, saCoverSheetShareList.size(), 'Should have only received a single record from the query');

    System.assertEquals(testSAcoverSheetShare.Id, saCoverSheetShareList[0].Id, 'SA Cover Sheet Share Id is not correct');

  }

 

  @IsTest

  static void testSelectByCaseIdAndRowCauseManual() {

     

    //Test Data

    //1. Insert Users

    User testUser = VIEWS_TestUtility.buildVIEWSTestUserByFirstAndLastName('Test', 'User');

    insert testUser;  

 

    User testUser2 = VIEWS_TestUtility.buildVIEWSTestUserByFirstAndLastName('Test2', 'User2');

    insert testUser2;  

 

    //2. Insert Case with OwnerId = User

    Id caseRecordTypeId = Schema.SObjectType.Case.getRecordTypeInfosByName().get('Investigations and Audits').getRecordTypeId();

    Case testCase = new Case(

      RecordTypeId = caseRecordTypeId,

      Views_GAO_Job_Code__c = '123',

      Views_Received_Date__c = DateTime.now(),

      Status = 'Acknowledgement Sent',

      Subject = 'test',

      VIEWS_Responsible_Organization__c ='00 OSVA Office of the Secretary',

      Views_Case_Sensitivity__c = 'Sensitive',

      OwnerId = testUser.Id

    );

    insert testCase;

 

    //3. Insert SA Cover Sheet

    VIEWS_SA_Cover_Sheet__c saCoverSheet = VIEWS_TestUtility.createSummaryAndApprovalCoverSheetForm(testCase.Id);

    insert saCoverSheet;     

 

    //4. Run the query

    List<VIEWS_SA_Cover_Sheet__Share> saCoverSheetShareList = VIEWS_SACoverSheetShareSelector.newInstance().selectByCaseIdAndRowCauseManual(new Set<Id> {testCase.Id});

 

    //5. Validate

    System.assertEquals(2, saCoverSheetShareList.size(), 'Should have only received two records from the query');

    System.assertEquals(saCoverSheet.Id, saCoverSheetShareList[0].ParentId, 'SA Cover Sheet Share Id is not correct');

  }*/

}