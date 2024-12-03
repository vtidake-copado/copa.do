import _checkUserPermissions from '@salesforce/apex/PersonaManagementServiceCtrl.checkUserPermissions';
import getDefaultPersonas from '@salesforce/apex/PersonaManagementServiceCtrl.getDefaultPersonas';
import createDefaultPersonaConfig from '@salesforce/apex/PersonaManagementServiceCtrl.createDefaultPersonaConfig';
import createDefaultPersonaRecord from '@salesforce/apex/PersonaManagementServiceCtrl.createDefaultPersonaRecord';
import _checkDefaultPersonaUpdates from '@salesforce/apex/PersonaManagementServiceCtrl.checkDefaultPersonaUpdates';
import _applyDefaultPersonaUpdates from '@salesforce/apex/PersonaManagementServiceCtrl.applyDefaultPersonaUpdates';
import _updatePersona from '@salesforce/apex/PersonaManagementServiceCtrl.updatePersona';
import _getPersonas from '@salesforce/apex/PersonaManagementServiceCtrl.getPersonas';
import _getPersonaDefinitions from '@salesforce/apex/PersonaManagementServiceCtrl.getPersonaDefinitions';
import createCopyPersonaConfig from '@salesforce/apex/PersonaManagementServiceCtrl.createCopyPersonaConfig';
import createCopyPersonaRecord from '@salesforce/apex/PersonaManagementServiceCtrl.createCopyPersonaRecord';
import _editPersonaDescription from '@salesforce/apex/PersonaManagementServiceCtrl.editPersonaDescription';
import _deletePersona1 from '@salesforce/apex/PersonaManagementServiceCtrl.deletePersona1';
import _deletePersona2 from '@salesforce/apex/PersonaManagementServiceCtrl.deletePersona2';
import _deletePersona3 from '@salesforce/apex/PersonaManagementServiceCtrl.deletePersona3';
import _getUsers from '@salesforce/apex/PersonaManagementUserServiceCtrl.getUsers';
import _getUsersWithSearchTerm from '@salesforce/apex/PersonaManagementUserServiceCtrl.getUsersWithSearchTerm';
import _getUsersForPersona from '@salesforce/apex/PersonaManagementUserServiceCtrl.getUsersForPersona';
import _addUser1 from '@salesforce/apex/PersonaManagementUserServiceCtrl.addUser1';
import _addUser2 from '@salesforce/apex/PersonaManagementUserServiceCtrl.addUser2';
import _addUser3 from '@salesforce/apex/PersonaManagementUserServiceCtrl.addUser3';
import _addUser4 from '@salesforce/apex/PersonaManagementUserServiceCtrl.addUser4';
import _addUser5 from '@salesforce/apex/PersonaManagementUserServiceCtrl.addUser5';
import _addUser6 from '@salesforce/apex/PersonaManagementUserServiceCtrl.addUser6';
import _removeUser1 from '@salesforce/apex/PersonaManagementUserServiceCtrl.removeUser1';
import _removeUser2 from '@salesforce/apex/PersonaManagementUserServiceCtrl.removeUser2';
import _removeUser3 from '@salesforce/apex/PersonaManagementUserServiceCtrl.removeUser3';
import _resetPassword from '@salesforce/apex/PersonaManagementUserServiceCtrl.resetPassword';
import _getPermissionSetGroups from '@salesforce/apex/PersonaManagementPermissionServiceCtrl.getPermissionSetGroups';
import _getPermissionsForPersona from '@salesforce/apex/PersonaManagementPermissionServiceCtrl.getPermissionsForPersona';
import _addPermissionSetGroup1 from '@salesforce/apex/PersonaManagementPermissionServiceCtrl.addPermissionSetGroup1';
import _addPermissionSetGroup2 from '@salesforce/apex/PersonaManagementPermissionServiceCtrl.addPermissionSetGroup2';
import _removePermission1 from '@salesforce/apex/PersonaManagementPermissionServiceCtrl.removePermission1';
import _removePermission2 from '@salesforce/apex/PersonaManagementPermissionServiceCtrl.removePermission2';
import _getLicenses from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.getLicenses';
import _getLicensesForPersona from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.getLicensesForPersona';
import _addPackageLicense1 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.addPackageLicense1';
import _addCopadoLicense1 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.addCopadoLicense1';
import _addPackageLicense2 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.addPackageLicense2';
import _addCopadoLicense2 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.addCopadoLicense2';
import _removePackageLicense1 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.removePackageLicense1';
import _removeCopadoLicense1 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.removeCopadoLicense1';
import _removePackageLicense2 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.removePackageLicense2';
import _removeCopadoLicense2 from '@salesforce/apex/PersonaManagementLicenseServiceCtrl.removeCopadoLicense2';
import _getCredentials from '@salesforce/apex/PersonaManagementCredentialServiceCtrl.getCredentials';
import _getCredentialsForPersona from '@salesforce/apex/PersonaManagementCredentialServiceCtrl.getCredentialsForPersona';
import _shareCredentials from '@salesforce/apex/PersonaManagementCredentialServiceCtrl.shareCredentials';
import _removeCredential from '@salesforce/apex/PersonaManagementCredentialServiceCtrl.removeCredential';
import _changeCredentialAccessLevel from '@salesforce/apex/PersonaManagementCredentialServiceCtrl.changeCredentialAccessLevel';
import _getFeatureToggles from '@salesforce/apex/PersonaManagementFeatureServiceCtrl.getFeatureToggles';
import _enableFeature1 from '@salesforce/apex/PersonaManagementFeatureServiceCtrl.enableFeature1';
import _enableFeature2 from '@salesforce/apex/PersonaManagementFeatureServiceCtrl.enableFeature2';
import _disableFeature1 from '@salesforce/apex/PersonaManagementFeatureServiceCtrl.disableFeature1';
import _disableFeature2 from '@salesforce/apex/PersonaManagementFeatureServiceCtrl.disableFeature2';
import _isRecalculatingPermissions from '@salesforce/apex/PersonaManagementServiceCtrl.isRecalculatingPermissions';

import { reduceErrors, namespace } from 'c/copadocoreUtils';
import NAME from '@salesforce/label/c.NAME';
import ERROR_VALUE from '@salesforce/label/c.Error_Value';

// UTILS

// eslint-disable-next-line @lwc/lwc/no-async-operation
const sleep = time => new Promise(resolve => setTimeout(resolve, time));

/* eslint-disable no-await-in-loop */
const repeatedExecution = async (callback, interval, timeout) => {
    const deadline = Date.now() + timeout;
    while (Date.now() < deadline) {
        if (!(await callback())) {
            return true;
        }
        await sleep(interval);
    }
};

// NOTE: for now we are not considering the persona, so if any permission set is being recalculated, this will wait for it. we can consider the persona later, but for now I think it's enough
export const waitForPSGRecalculation = async () => {
    await repeatedExecution(_isRecalculatingPermissions, 3000, 30000);
};

// INIT

export const checkUserPermissions = async () => {
    const userHasPermission = await _checkUserPermissions();
    return userHasPermission;
};

export const createDefaultPersonas = async defaultPersonas => {
    await waitForPSGRecalculation();
    if (defaultPersonas.length === 0) {
        defaultPersonas = await getDefaultPersonas();
    }

    let errorPersonas = [];
    const personaPromises = defaultPersonas.map(defaultPersona => {
        return createDefaultPersonaConfig({ personaName: defaultPersona.MasterLabel })
            .then(personaConfig => {
                return createDefaultPersonaRecord({
                    personaName: defaultPersona.MasterLabel,
                    description: defaultPersona[namespace + 'Description__c'],
                    personaConfig: JSON.stringify(personaConfig)
                }).catch(error => {
                    const errorMessage = reduceErrors(error);
                    errorPersonas.push({ [NAME]: defaultPersona.MasterLabel, [ERROR_VALUE]: errorMessage });
                });
            })
            .catch(error => {
                const errorMessage = reduceErrors(error);
                errorPersonas.push({ [NAME]: defaultPersona.MasterLabel, [ERROR_VALUE]: errorMessage });
            });
    });

    await Promise.all(personaPromises);
    await waitForPSGRecalculation();
    return errorPersonas;
};

export const checkDefaultPersonaUpdates = async () => {
    const personasWithUpdates = await _checkDefaultPersonaUpdates();
    return personasWithUpdates;
};

export const updatePersona = async (personaId, description, personaConfig) => {
    await _updatePersona(personaId, description, personaConfig);
};

export const applyDefaultPersonaUpdates = async personaNames => {
    await waitForPSGRecalculation();
    const personaPromises = personaNames.map(personaName => {
        return _applyDefaultPersonaUpdates({ personaName: personaName }).then(result => {
            if (result.defaultPersonaToCreate) {
                return createDefaultPersonas([result.defaultPersonaToCreate]);
            }
            return updatePersona({
                personaId: result.updatedPersonaId,
                description: result.updatedPersonaDescription,
                personaConfig: result.updatedPersonaConfigJson
            });
        });
    });

    const newDefaultPersonas = await Promise.all(personaPromises);
    await waitForPSGRecalculation();
    return newDefaultPersonas.filter(persona => persona != null);
};

// SIDEBAR

export const getPersonas = async () => {
    const personaDefinitions = await _getPersonas();
    return personaDefinitions;
};

export const getPersonaDefinitions = async () => {
    const personaDefinitions = await _getPersonaDefinitions();
    return personaDefinitions;
};

export const createPersona = async personaInput => {
    await waitForPSGRecalculation();
    const personaConfigResult = await createCopyPersonaConfig({ name: personaInput.name, copyFrom: personaInput.copyFrom });
    await createCopyPersonaRecord({
        name: personaInput.name,
        description: personaInput.description,
        personaConfig: JSON.stringify(personaConfigResult)
    });
    await waitForPSGRecalculation();
};

export const editPersonaDescription = async (personaId, description) => {
    await _editPersonaDescription(personaId, description);
};

export const deletePersona = async personaId => {
    await waitForPSGRecalculation();
    await _deletePersona1(personaId);
    await _deletePersona2(personaId);
    await _deletePersona3(personaId);
    await waitForPSGRecalculation();
};

// USERS TAB

export const getUsers = async () => {
    const users = await _getUsers();
    return users;
};

export const getUsersWithSearchTerm = async searchTerm => {
    const users = await _getUsersWithSearchTerm(searchTerm);
    return users;
};

export const getUsersForPersona = async personaId => {
    const users = await _getUsersForPersona(personaId);
    return users;
};

export const _process = async (personaId, userIds) => {
    await _addUser4({ personaId: personaId, userIds: userIds });
    await _addUser5({ personaId: personaId, userIds: userIds });
    await _addUser6({ personaId: personaId, userIds: userIds });
};

export const processInChunks = async (personaInput, chunkSize) => {
    const lastChunkSize = personaInput.userIds.length % chunkSize;
    const isLastChunk = lastChunkSize < 0;
    const totalChunks = isLastChunk
        ? Math.floor(personaInput.userIds.length / chunkSize)
        : Math.ceil(personaInput.userIds.length / chunkSize);

    for (let index = 0; index < totalChunks; index++) {
        let chunk = personaInput.userIds.slice(index * chunkSize, index * chunkSize + chunkSize);
        if (index === totalChunks - 1 && isLastChunk) {
            chunk.push(...personaInput.userIds.slice(-lastChunkSize));
        }
        await _process(personaInput.personaId, chunk);
    }
};

export const _addUserCredentials = async (personaInput) => {
    const chunkSize = 100;
    if (personaInput.userIds.length <= chunkSize) {
        await _process(personaInput.personaId, personaInput.userIds);
    } else {
        await processInChunks(personaInput, chunkSize);
    }
};

export const addUser = async (personaId, userIds) => {
    await waitForPSGRecalculation();
    await _addUser1(personaId, userIds);
    await _addUser2(personaId, userIds);
    await _addUser3(personaId, userIds);
    await _addUserCredentials(personaId, userIds);
    await waitForPSGRecalculation();
};

export const removeUser = async (personaId, userIds) => {
    await waitForPSGRecalculation();
    await _removeUser1(personaId, userIds);
    await _removeUser2(personaId, userIds);
    await _removeUser3(personaId, userIds);
    await waitForPSGRecalculation();
};

export const resetPassword = async userId => {
    await _resetPassword(userId);
};

export const createUser = () => {
    window.open('/005/e?isUserEntityOverride=1', '_blank');
};

// PERMISSIONS TAB

export const getPermissionSetGroups = async () => {
    const permissionSetGroups = await _getPermissionSetGroups();
    return permissionSetGroups;
};

export const getPermissionsForPersona = async personaId => {
    const permissionSetGroups = await _getPermissionsForPersona(personaId);
    return permissionSetGroups;
};

export const addPermissionSetGroup = async (personaId, permissionSetGroups) => {
    await waitForPSGRecalculation();
    await _addPermissionSetGroup1(personaId, permissionSetGroups);
    await _addPermissionSetGroup2(personaId, permissionSetGroups);
    await waitForPSGRecalculation();
};

export const removePermission = async (personaId, permissions) => {
    await waitForPSGRecalculation();
    await _removePermission1(personaId, permissions);
    await _removePermission2(personaId, permissions);
    await waitForPSGRecalculation();
};

// LICENSE TAB

export const getLicenses = async () => {
    const licenses = await _getLicenses();
    return licenses;
};

export const getLicensesForPersona = async personaId => {
    const licenses = await _getLicensesForPersona(personaId);
    return licenses;
};

export const addPackageLicense = async (personaId, licenses) => {
    await _addPackageLicense1(personaId, licenses);
    await _addPackageLicense2(personaId, licenses);
};

export const addLicense = async (personaId, licenses) => {
    await _addCopadoLicense1(personaId, licenses);
    await _addCopadoLicense2(personaId, licenses);
};

export const removePackageLicense = async (personaId, licenses) => {
    await _removePackageLicense1(personaId, licenses);
    await _removePackageLicense2(personaId, licenses);
};

export const removeLicense = async (personaId, licenses) => {
    await _removeCopadoLicense1(personaId, licenses);
    await _removeCopadoLicense2(personaId, licenses);
};

// CREDENTIALS TAB

export const getCredentials = async () => {
    const credentials = await _getCredentials();
    return credentials;
};

export const getCredentialsForPersona = async personaId => {
    const credentials = await _getCredentialsForPersona(personaId);
    return credentials;
};

export const shareCredentials = async (personaId, credentialIds) => {
    await _shareCredentials(personaId, credentialIds);
};

export const removeCredential = async (personaId, credentialIds) => {
    await _removeCredential(personaId, credentialIds);
};

export const changeCredentialAccessLevel = async (personaId, credentialId, accessLevel) => {
    await _changeCredentialAccessLevel(personaId, credentialId, accessLevel);
};

// FEATURES TAB

export const getFeatureToggles = async personaId => {
    const featureToggles = await _getFeatureToggles(personaId);
    return featureToggles;
};

export const enableFeature = async (personaId, featureName) => {
    await waitForPSGRecalculation();
    await _enableFeature1(personaId, featureName);
    await _enableFeature2(personaId, featureName);
    await waitForPSGRecalculation();
};

export const disableFeature = async (personaId, featureName) => {
    await waitForPSGRecalculation();
    await _disableFeature1(personaId, featureName);
    await _disableFeature2(personaId, featureName);
    await waitForPSGRecalculation();
};