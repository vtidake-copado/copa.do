import CANCEL from '@salesforce/label/c.Cancel';
import SAVE from '@salesforce/label/c.Save';
import NEXT from '@salesforce/label/c.NEXT';
import NEW_PIPELINE from '@salesforce/label/c.NEW_DEPLOYMENT_FLOW';
import CHOOSE_TEMPLATE_TITLE from '@salesforce/label/c.New_Pipeline_Wizard_Choose_Template_Title';
import DEVELOPMENT_ENVIRONMENTS from '@salesforce/label/c.Development_Environments';
import DEVELOPMENT_ENVIRONMENTS_HELPTEXT from '@salesforce/label/c.Development_Environments_Helptext';
import DEVELOPMENT_STREAMS from '@salesforce/label/c.Development_Streams';
import DEVELOPMENT_STREAMS_HELPTEXT from '@salesforce/label/c.Development_Streams_Helptext';
import DEVELOPMENT_ENVIRONMENTS_PER_STREAM from '@salesforce/label/c.Development_Environments_per_stream';
import DEVELOPMENT_ENVIRONMENTS_PER_STREAM_HELPTEXT from '@salesforce/label/c.Development_Environments_per_stream_Helptext';
import EXAMPLE from '@salesforce/label/c.Example';
import GO_TO_PIPELINE_BUILDER from '@salesforce/label/c.Go_To_Pipeline_Builder';
import SEQUENTIAL_DEVELOPMENT_PIPELINE_TITLE from '@salesforce/label/c.Sequential_Development_Pipeline_Title';
import SEQUENTIAL_DEVELOPMENT_PIPELINE_DESCRIPTION from '@salesforce/label/c.Sequential_Development_Pipeline_Description';
import PARALLEL_DEVELOPMENT_PIPELINE_TITLE from '@salesforce/label/c.Parallel_Development_Pipeline_Title';
import PARALLEL_DEVELOPMENT_PIPELINE_DESCRIPTION from '@salesforce/label/c.Parallel_Development_Pipeline_Description';
import GIT_REPOSITOY_NOT_AUTHENTICATED from '@salesforce/label/c.Git_Repository_Not_Authenticated';

import PIPELINE_OBJECT from '@salesforce/schema/Deployment_Flow__c';
import PIPELINE_NAME_FIELD from '@salesforce/schema/Deployment_Flow__c.Name';
import PIPELINE_MAIN_BRANCH_FIELD from '@salesforce/schema/Deployment_Flow__c.Main_Branch__c';
import PIPELINE_PLATFORM_FIELD from '@salesforce/schema/Environment__c.Platform__c';

import ENVIRONMENT_OBJECT from '@salesforce/schema/Environment__c';
import ENVIRONMENT_NAME_FIELD from '@salesforce/schema/Environment__c.Name';
import ENVIRONMENT_TYPE_FIELD from '@salesforce/schema/Environment__c.Type__c';
import ENVIRONMENT_PLATFORM_FIELD from '@salesforce/schema/Environment__c.Platform__c';

import PIPELINE_CONNECTION_OBJECT from '@salesforce/schema/Deployment_Flow_Step__c';
import PIPELINE_CONNECTION_SOURCE_BRANCH_FIELD from '@salesforce/schema/Deployment_Flow_Step__c.Branch__c';
import PIPELINE_CONNECTION_DESTINATION_BRANCH_FIELD from '@salesforce/schema/Deployment_Flow_Step__c.Destination_Branch__c';
import PIPELINE_CONNECTION_SOURCE_ENVIRONMENT_FIELD from '@salesforce/schema/Deployment_Flow_Step__c.Source_Environment__c';
import PIPELINE_CONNECTION_DESTINATION_ENVIRONMENT_FIELD from '@salesforce/schema/Deployment_Flow_Step__c.Destination_Environment__c';
import PIPELINE_CONNECTION_PIPELINE_FIELD from '@salesforce/schema/Deployment_Flow_Step__c.Deployment_Flow__c';
import PIPELINE_CONNECTION_STAGE_CONNECTION_FIELD from '@salesforce/schema/Deployment_Flow_Step__c.Stage_Connection__c';

import STAGE_OBJECT from '@salesforce/schema/Stage__c';
import STAGE_NAME_FIELD from '@salesforce/schema/Stage__c.Name';
import STAGE_DISPLAY_NAME_FIELD from '@salesforce/schema/Stage__c.Display_Name__c';
import STAGE_META_STAGE_FIELD from '@salesforce/schema/Stage__c.Meta_Stage__c';

import STAGE_CONNECTION_OBJECT from '@salesforce/schema/Stage_Connection__c';
import STAGE_CONNECTION_PIPELINE_FIELD from '@salesforce/schema/Stage_Connection__c.Pipeline__c';
import STAGE_CONNECTION_STAGE_FIELD from '@salesforce/schema/Stage_Connection__c.Stage__c';
import STAGE_CONNECTION_NEXT_STAGE_CONNECTION_FIELD from '@salesforce/schema/Stage_Connection__c.Next_Stage_Connection__c';

import PIPELINE_PREVIEW_IMAGES from '@salesforce/resourceUrl/pipeline_preview_images';

const PIPELINE_TYPE_SEQUENTIAL = 'sequential';
const PIPELINE_TYPE_PARALLEL = 'parallel';

const PRODUCTION_STAGE = 'Production';
const PRODUCTION_META_STAGE = 'Production';
const TESTING_STAGE = 'Testing';
const TESTING_META_STAGE = 'Test';
const DEVELOPMENT_STAGE = 'Development';
const DEVELOPMENT_META_STAGE = 'Build';

export const label = {
    CANCEL,
    SAVE,
    NEXT,
    CHOOSE_TEMPLATE_TITLE,
    SEQUENTIAL_DEVELOPMENT_PIPELINE_TITLE,
    SEQUENTIAL_DEVELOPMENT_PIPELINE_DESCRIPTION,
    PARALLEL_DEVELOPMENT_PIPELINE_TITLE,
    PARALLEL_DEVELOPMENT_PIPELINE_DESCRIPTION,
    DEVELOPMENT_ENVIRONMENTS,
    DEVELOPMENT_ENVIRONMENTS_HELPTEXT,
    DEVELOPMENT_ENVIRONMENTS_PER_STREAM,
    DEVELOPMENT_ENVIRONMENTS_PER_STREAM_HELPTEXT,
    DEVELOPMENT_STREAMS,
    DEVELOPMENT_STREAMS_HELPTEXT,
    EXAMPLE,
    GO_TO_PIPELINE_BUILDER,
    NEW_PIPELINE,
    GIT_REPOSITOY_NOT_AUTHENTICATED
};

export const schema = {
    PIPELINE_OBJECT,
    PIPELINE_NAME_FIELD,
    PIPELINE_MAIN_BRANCH_FIELD,
    PIPELINE_PLATFORM_FIELD,
    ENVIRONMENT_OBJECT,
    ENVIRONMENT_NAME_FIELD,
    ENVIRONMENT_TYPE_FIELD,
    ENVIRONMENT_PLATFORM_FIELD,
    PIPELINE_CONNECTION_OBJECT,
    PIPELINE_CONNECTION_SOURCE_BRANCH_FIELD,
    PIPELINE_CONNECTION_DESTINATION_BRANCH_FIELD,
    PIPELINE_CONNECTION_SOURCE_ENVIRONMENT_FIELD,
    PIPELINE_CONNECTION_DESTINATION_ENVIRONMENT_FIELD,
    PIPELINE_CONNECTION_PIPELINE_FIELD,
    PIPELINE_CONNECTION_STAGE_CONNECTION_FIELD,
    STAGE_OBJECT,
    STAGE_NAME_FIELD,
    STAGE_DISPLAY_NAME_FIELD,
    STAGE_META_STAGE_FIELD,
    STAGE_CONNECTION_OBJECT,
    STAGE_CONNECTION_PIPELINE_FIELD,
    STAGE_CONNECTION_STAGE_FIELD,
    STAGE_CONNECTION_NEXT_STAGE_CONNECTION_FIELD
};

export const constants = {
    PIPELINE_PREVIEW_IMAGES,
    PIPELINE_TYPE_SEQUENTIAL,
    PIPELINE_TYPE_PARALLEL,
    PRODUCTION_STAGE,
    PRODUCTION_META_STAGE,
    TESTING_STAGE,
    TESTING_META_STAGE,
    DEVELOPMENT_STAGE,
    DEVELOPMENT_META_STAGE
};