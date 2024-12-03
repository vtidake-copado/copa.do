import DATA_SET_DEPLOYMENT_MESSAGE from '@salesforce/label/c.DataSetDeploymentMessage';
import DEPLOY_DATA_SET from '@salesforce/label/c.DeployDataSet';

export const label = {
    DATA_SET_DEPLOYMENT_MESSAGE,
    DEPLOY_DATA_SET
};
export const flowInputs = {
    inputVariableName: 'DataSetId',
    type: 'String'
};

export const extensionKeyValue = {
    platform: 'NextGenDD',
    key: 'DeployDataSetFlow'
};