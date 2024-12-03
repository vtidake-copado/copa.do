import EDIT from '@salesforce/label/c.EDIT';
import SAVE from '@salesforce/label/c.Save';
import CANCEL from '@salesforce/label/c.Cancel';
import CLOSE from '@salesforce/label/c.CLOSE';
import CLEAR_ALL from '@salesforce/label/c.Clear_All';
import INSUFFICIENT_PERMISSION from '@salesforce/label/c.No_necessary_permission_for_automation_rule';
import CONFIGURE_CRITERIA from '@salesforce/label/c.Configure_Criteria';
import FIELD_LABEL from '@salesforce/label/c.Field_Label';
import FIELD_API_NAME from '@salesforce/label/c.Field_API_Name';
import ADD_CONDITION from '@salesforce/label/c.Add_Condition';
import CONDITION_FILTER_OPERATOR_LABEL from '@salesforce/label/c.QualityGatesConditionOperatorLabel';
import CONDITION_FILTER_VALUE_LABEL from '@salesforce/label/c.QualityGatesConditionValueLabel';
import DELETE_CONDITION from '@salesforce/label/c.QualityGatesDeleteCondition';
import CHECK_SYNTAX from '@salesforce/label/c.Check_Syntax';
import CRITERIA_CANNNOT_BE_CONFIGURED from '@salesforce/label/c.Criteria_Cannnot_Be_Configured';
import CONFIGURE_CRITERIA_ERROR_BODY from '@salesforce/label/c.Configure_Criteria_Error_Body';
import CRITERIA_SUCCESSFULLY_CREATED from '@salesforce/label/c.Criteria_Successfully_Created';
import CRITERIA_SUCCESSFULLY_UPDATED from '@salesforce/label/c.Criteria_Successfully_Updated';
import EQUALS from '@salesforce/label/c.Equals';
import DOES_NOT_EQUAL from '@salesforce/label/c.Does_Not_Equal';
import GREATER_THAN from '@salesforce/label/c.Greater_Than';
import GREATER_OR_EQUAL from '@salesforce/label/c.Greater_Or_Equal';
import LESS_THAN from '@salesforce/label/c.Less_Than';
import LESS_OR_EQUAL from '@salesforce/label/c.Less_Or_Equal';
import CONTAINS from '@salesforce/label/c.Contains';
import DOES_NOT_CONTAIN from '@salesforce/label/c.Does_Not_Contain';
import MAIN_OBJECT_HELP_TEXT from '@salesforce/label/c.Main_Object_Help_Text';
import TAKE_ACTION_WHEN_HELP_TEXT from '@salesforce/label/c.Take_Action_When_Help_Text';
import CUSTOM_CONDITION_HELP_TEXT from '@salesforce/label/c.Custom_Condition_Help_Text';
import FIELD_LABEL_HELP_TEXT from '@salesforce/label/c.Field_Label_Help_Text';
import ERROR_SEARCHING_RECORDS from '@salesforce/label/c.Error_Searching_Records';
import USER_STORIES_REACHED_ENVIRONMENT from '@salesforce/label/c.UserStoriesReachedEnvironments';
import USER_STORIES_REACHED_ENVIRONMENT_HELPTEXT from '@salesforce/label/c.UserStoriesReachedEnvironmentsHelpText';
import SELECT_ENVIRONMENT from '@salesforce/label/c.SelectEnviornment';
import OUT_OF_SYNC_MATCH_CONDITIONS from '@salesforce/label/c.OutOfSyncMatchConditions';
import OUT_OF_SYNC_MATCH_CONDITIONS_HELPTEXT from '@salesforce/label/c.OutOfSyncMatchConditionsHelptext';
import ADD_CONDITIONS from '@salesforce/label/c.AddConditions';
import LOADING from '@salesforce/label/c.LOADING';
import ENVIRONMENTS from '@salesforce/label/c.Environments';


import USER_STORY_OBJECT from '@salesforce/schema/User_Story__c';
import SYSTEM_PROPERTY_OBJECT from '@salesforce/schema/System_Property__c';
import SYSTEM_PROPERTY_VALUE from '@salesforce/schema/System_Property__c.Value__c';
import SYSTEM_PROPERTY_NAME from '@salesforce/schema/System_Property__c.Name';
import SYSTEM_PROPERTY_IS_PUBLIC from '@salesforce/schema/System_Property__c.Is_Public__c';
import SYSTEM_PROPERTY_API_NAME from '@salesforce/schema/System_Property__c.API_Name__c';
import SYSTEM_PROPERTY_PIPELINE_ID from '@salesforce/schema/System_Property__c.Pipeline__c';
import PIPELINE_NAME from '@salesforce/schema/Deployment_Flow__c.Name';

export const label = {
    EDIT,
    SAVE,
    CANCEL,
    CLOSE,
    CLEAR_ALL,
    INSUFFICIENT_PERMISSION,
    CONFIGURE_CRITERIA,
    FIELD_LABEL,
    FIELD_API_NAME,
    ADD_CONDITION,
    CONDITION_FILTER_OPERATOR_LABEL,
    CONDITION_FILTER_VALUE_LABEL,
    DELETE_CONDITION,
    CHECK_SYNTAX,
    CRITERIA_CANNNOT_BE_CONFIGURED,
    CONFIGURE_CRITERIA_ERROR_BODY,
    CRITERIA_SUCCESSFULLY_CREATED,
    CRITERIA_SUCCESSFULLY_UPDATED,
    EQUALS,
    DOES_NOT_EQUAL,
    GREATER_THAN,
    GREATER_OR_EQUAL,
    LESS_THAN,
    LESS_OR_EQUAL,
    CONTAINS,
    DOES_NOT_CONTAIN,
    MAIN_OBJECT_HELP_TEXT,
    TAKE_ACTION_WHEN_HELP_TEXT,
    CUSTOM_CONDITION_HELP_TEXT,
    FIELD_LABEL_HELP_TEXT,
    ERROR_SEARCHING_RECORDS,
    USER_STORIES_REACHED_ENVIRONMENT,
    SELECT_ENVIRONMENT,
    OUT_OF_SYNC_MATCH_CONDITIONS,
    ADD_CONDITIONS,
    ENVIRONMENTS,
    USER_STORIES_REACHED_ENVIRONMENT_HELPTEXT,
    OUT_OF_SYNC_MATCH_CONDITIONS_HELPTEXT
};

export const schema = {
    USER_STORY_OBJECT,
    SYSTEM_PROPERTY_VALUE,
    SYSTEM_PROPERTY_NAME,
    SYSTEM_PROPERTY_IS_PUBLIC,
    SYSTEM_PROPERTY_API_NAME,
    PIPELINE_NAME,
    SYSTEM_PROPERTY_OBJECT,
    SYSTEM_PROPERTY_PIPELINE_ID,
    LOADING
};

export const AND = 'AND';
export const OR = 'OR';
export const CUSTOM = 'CUSTOM';
export const REFERENCE = 'REFERENCE';

export const conditionLookUpOperators = [
    { label: label.EQUALS, value: 'equals' },
    { label: label.DOES_NOT_EQUAL, value: 'notEquals' }
];

export const systemPropertyApiName = 'backPromotionAwarenessCriteria';