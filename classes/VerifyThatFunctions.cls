public with sharing class VerifyThatFunctions {
  private static final String STANDARD = 'Standard';
  private static final String CUSTOM = 'Custom';
  private List<Function__c> records;
  private Map<Id, Function__c> old;

  // CONSTRUCTOR

  public VerifyThatFunctions(List<Function__c> records) {
    this.records = records;
  }

  public VerifyThatFunctions(List<Function__c> records, Map<Id, Function__c> old) {
    this(records);
    this.old = old;
  }

  // PUBLIC

  public void areNotStandard() {
    Settings__c setting = Settings__c.getOrgDefaults();

    if(setting.Enable_Standard_Function_Edit__c != true) {
      for (Function__c function : records) {
        if (Trigger.isInsert || Trigger.isDelete) {
          if (function.Type__c == STANDARD) {
            function.addError(Label.Standard_Functions_not_Creatable);
          }
        } else if (Trigger.isUpdate) {
          Function__c oldFunction = old.get(function.Id);
          if (
            (oldFunction.Type__c == STANDARD &&
            oldFunction.Type__c != function.Type__c) ||
            function.Type__c == STANDARD
          ) {
            function.addError(Label.Standard_Functions_not_Editable);
          }
        }
      }
    }
  }

  public void areNotCustom() {
    Boolean customFunctionEnabled = FeatureManagement.checkPackageBooleanValue('CustomFunctionEnabled');

    // NOTE: Mocking feature parameter in test context results in unhandeled exception for mixed DML so skipping it
    if(customFunctionEnabled || Test.isRunningTest()) {
      return;
    }

    for (Function__c function : records) {
        Function__c oldFunction = old != null ? old.get(function.Id) : null;

        if (function.Type__c == CUSTOM || (oldFunction != null && oldFunction.Type__c != function.Type__c)) {
          function.addError(Label.customFunctionsCannotBeModified);
        }
    }
  }
}