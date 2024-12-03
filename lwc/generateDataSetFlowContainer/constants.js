import DATA_SET_GENERATION_MESSAGE from '@salesforce/label/c.DataSetGenerationMessage';
import GENERATE_DATA_SET from '@salesforce/label/c.GenerateDataSet';

export const label = {
    DATA_SET_GENERATION_MESSAGE,
    GENERATE_DATA_SET
}
export const flowInputs = {
    inputVariableName : 'DataSetId',
    type : 'String'
}

export const extensionKeyValue = {
    platform : 'NextGenDD',
    key : 'GenerateDataSetFlow'
}