import { createRecord, deleteRecord } from 'lightning/uiRecordApi';

import { constants, schema } from './constants';

const createStage = async (name, metaStage) => {
    const fields = {};
    fields[schema.STAGE_NAME_FIELD.fieldApiName] = name;
    fields[schema.STAGE_DISPLAY_NAME_FIELD.fieldApiName] = name;
    fields[schema.STAGE_META_STAGE_FIELD.fieldApiName] = metaStage;

    const recordInput = { apiName: schema.STAGE_OBJECT.objectApiName, fields };

    const stage = await createRecord(recordInput);
    return stage;
};

const createStageConnection = async (pipeline, stage, nextStageConnection) => {
    const fields = {};
    fields[schema.STAGE_CONNECTION_PIPELINE_FIELD.fieldApiName] = pipeline.id;
    fields[schema.STAGE_CONNECTION_STAGE_FIELD.fieldApiName] = stage.id;
    fields[schema.STAGE_CONNECTION_NEXT_STAGE_CONNECTION_FIELD.fieldApiName] = nextStageConnection?.id;

    const recordInput = { apiName: schema.STAGE_CONNECTION_OBJECT.objectApiName, fields };

    const stageConnection = await createRecord(recordInput);
    return stageConnection;
};

const createPipelineConnection = async (pipeline, sourceEnvironment, destinationEnvironment, stageConnection, destinationBranch) => {
    const fields = {};
    fields[schema.PIPELINE_CONNECTION_PIPELINE_FIELD.fieldApiName] = pipeline.id;
    fields[schema.PIPELINE_CONNECTION_SOURCE_ENVIRONMENT_FIELD.fieldApiName] = sourceEnvironment.id;
    fields[schema.PIPELINE_CONNECTION_DESTINATION_ENVIRONMENT_FIELD.fieldApiName] = destinationEnvironment.id;
    fields[schema.PIPELINE_CONNECTION_SOURCE_BRANCH_FIELD.fieldApiName] = sourceEnvironment.fields[schema.ENVIRONMENT_NAME_FIELD.fieldApiName].value
        .toLowerCase()
        .replace(/\s/g, '');
    fields[schema.PIPELINE_CONNECTION_DESTINATION_BRANCH_FIELD.fieldApiName] =
        typeof destinationBranch !== 'undefined'
            ? destinationBranch
            : destinationEnvironment.fields[schema.ENVIRONMENT_NAME_FIELD.fieldApiName].value.toLowerCase().replace(/\s/g, '');
    fields[schema.PIPELINE_CONNECTION_STAGE_CONNECTION_FIELD.fieldApiName] = stageConnection.id;

    const recordInput = { apiName: schema.PIPELINE_CONNECTION_OBJECT.objectApiName, fields };

    const pipelineConnection = await createRecord(recordInput);
    return pipelineConnection;
};

const createEnvironment = async (name, platform) => {
    const fields = {};
    fields[schema.ENVIRONMENT_NAME_FIELD.fieldApiName] = name;
    // fields[ENVIRONMENT_TYPE_FIELD.fieldApiName] = 'Sandbox';
    fields[schema.ENVIRONMENT_PLATFORM_FIELD.fieldApiName] = platform;

    const recordInput = { apiName: schema.ENVIRONMENT_OBJECT.objectApiName, fields };

    const environment = await createRecord(recordInput);
    return environment;
};

export const createPipelineStructure = async (pipeline, stages, environmentsCount, streamsCount, type) => {
    /* eslint-disable no-await-in-loop */
    let idsToRemove = [];
    try {
        // NOTE: needed because objects returned by uiRecordApi use lower case keys
        pipeline.id = pipeline.Id;
        const platform = pipeline[schema.PIPELINE_PLATFORM_FIELD.fieldApiName];
        const mainBranch = pipeline[schema.PIPELINE_MAIN_BRANCH_FIELD.fieldApiName];
        let prodStage = stages
            .map(stage => ({ ...stage, id: stage.Id }))
            .find(stage => stage[schema.STAGE_DISPLAY_NAME_FIELD.fieldApiName] === constants.PRODUCTION_STAGE);
        if (!prodStage) {
            prodStage = await createStage(constants.PRODUCTION_STAGE, constants.PRODUCTION_META_STAGE);
        }
        const prodStageConnection = await createStageConnection(pipeline, prodStage, null);
        idsToRemove.push(prodStageConnection.id);
        let testStage = stages
            .map(stage => ({ ...stage, id: stage.Id }))
            .find(stage => stage[schema.STAGE_DISPLAY_NAME_FIELD.fieldApiName] === constants.TESTING_STAGE);
        if (!testStage) {
            testStage = await createStage(constants.TESTING_STAGE, constants.TESTING_META_STAGE);
        }
        const testStageConnection = await createStageConnection(pipeline, testStage, prodStageConnection);
        idsToRemove.push(testStageConnection.id);
        let buildStage = stages
            .map(stage => ({ ...stage, id: stage.Id }))
            .find(stage => stage[schema.STAGE_DISPLAY_NAME_FIELD.fieldApiName] === constants.DEVELOPMENT_STAGE);
        if (!buildStage) {
            buildStage = await createStage(constants.DEVELOPMENT_STAGE, constants.DEVELOPMENT_META_STAGE);
        }
        const buildStageConnection = await createStageConnection(pipeline, buildStage, testStageConnection);
        idsToRemove.push(buildStageConnection.id);
        const prodEnvironment = await createEnvironment('Prod', platform);
        idsToRemove.push(prodEnvironment.id);
        const stagingEnvironment = await createEnvironment('Staging', platform);
        idsToRemove.push(stagingEnvironment.id);
        const staginToProdConnection = await createPipelineConnection(pipeline, stagingEnvironment, prodEnvironment, testStageConnection, mainBranch);
        idsToRemove.push(staginToProdConnection.id);
        const hotfixEnvironment = await createEnvironment('Hotfix', platform);
        idsToRemove.push(hotfixEnvironment.id);
        const hotfixToProdConnection = await createPipelineConnection(pipeline, hotfixEnvironment, prodEnvironment, prodStageConnection, mainBranch);
        idsToRemove.push(hotfixToProdConnection.id);
        const uatEnvironment = await createEnvironment('UAT', platform);
        idsToRemove.push(uatEnvironment.id);
        const uatToStagingConnection = await createPipelineConnection(pipeline, uatEnvironment, stagingEnvironment, testStageConnection);
        idsToRemove.push(uatToStagingConnection.id);
        const qaEnvironment = await createEnvironment('QA', platform);
        idsToRemove.push(qaEnvironment.id);
        const qaToUatConnection = await createPipelineConnection(pipeline, qaEnvironment, uatEnvironment, testStageConnection);
        idsToRemove.push(qaToUatConnection.id);
        const intEnvironment = await createEnvironment('Int', platform);
        idsToRemove.push(intEnvironment.id);
        const intToQaConnection = await createPipelineConnection(pipeline, intEnvironment, qaEnvironment, buildStageConnection);
        idsToRemove.push(intToQaConnection.id);
        if (type === constants.PIPELINE_TYPE_PARALLEL) {
            let currentDevCount = 1;
            for (let i = 1; i <= streamsCount; i++) {
                const intStreamEnvironment = await createEnvironment('int' + i, platform);
                idsToRemove.push(intStreamEnvironment.id);
                const intStreamToIntConnection = await createPipelineConnection(pipeline, intStreamEnvironment, intEnvironment, buildStageConnection);
                idsToRemove.push(intStreamToIntConnection.id);
                for (let j = 1; j <= environmentsCount; j++) {
                    const devEnvironment = await createEnvironment('dev' + currentDevCount, platform);
                    idsToRemove.push(devEnvironment.id);
                    const devToIntStreamConnection = await createPipelineConnection(
                        pipeline,
                        devEnvironment,
                        intStreamEnvironment,
                        buildStageConnection
                    );
                    idsToRemove.push(devToIntStreamConnection.id);
                    currentDevCount++;
                }
            }
        } else {
            for (let i = 1; i <= environmentsCount; i++) {
                const devEnvironment = await createEnvironment('dev' + i, platform);
                idsToRemove.push(devEnvironment.id);
                const devToIntConnection = await createPipelineConnection(pipeline, devEnvironment, intEnvironment, buildStageConnection);
                idsToRemove.push(devToIntConnection.id);
            }
        }
    } catch (error) {
        // TODO: order might be important, so we should not run all promises in parallel
        await Promise.all(idsToRemove.map(id => deleteRecord(id)));
        throw error;
    }

    /* eslint-enable no-await-in-loop */
};