import { LightningElement, api, wire } from 'lwc';
import LOGGED_IN_USER_ID from '@salesforce/user/Id';
import { getRecord } from 'lightning/uiRecordApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { showToastError, showToastSuccess } from 'c/copadocoreToastNotification';
import { namespace, reduceErrors, formatLabel } from 'c/copadocoreUtils';
import { getSortedData, getSearchedData } from 'c/datatableService';
import { getUsers, getUsersWithSearchTerm, getUsersForPersona, addUser, resetPassword, createUser } from 'c/personaManagementService';
import { label, schema, constants } from './constants';

export default class PersonaUserSettings extends LightningElement {
    _personaDefinition;

    @api
    get personaDefinition() {
        return this._personaDefinition;
    }

    set personaDefinition(personaDefinition) {
        this._personaDefinition = personaDefinition;
        this._loadPersonaUsers();
    }

    label = label;
    constants = constants;
    schema = schema;

    // error handling
    showError = false;
    errorMessage;

    // warning hadling
    showWarning = false;
    warningMessage;

    // spinner
    isRunning = true;
    objectInfoLoaded = false;

    // table
    personaUsers = [];
    personaUserColumns = [];
    allUsers = [];
    allUserColumns = [];

    // sorting
    defaultSortDirectionPersonaUsers = 'asc';
    sortDirectionPersonaUsers = 'asc';
    sortedByPersonaUsers = schema.NAME_FIELD.fieldApiName;
    defaultSortDirectionAllUsers = 'asc';
    sortDirectionAllUsers = 'asc';
    sortedByAllUsers = schema.NAME_FIELD.fieldApiName;

    // searching
    searchTermPersonaUsers = '';
    searchedPersonaUsers = [];
    searchTermAllUsers = '';
    searchedAllUsers = [];

    // Current User
    currentUserId = LOGGED_IN_USER_ID;
    currentUserProfileName;

    @wire(getRecord, {
        recordId: LOGGED_IN_USER_ID,
        fields: [schema.PROFILE_NAME]
    })
    wireuser({ error, data }) {
        if (data && data.fields.Profile.value) {
            this.currentUserProfileName = data.fields.Profile.value.fields.Name.value;
        }
        if (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    @wire(getObjectInfo, { objectApiName: schema.USER_OBJECT })
    userInfo({ data, error }) {
        if (data) {
            this._createColumns(data);
            this.objectInfoLoaded = true;
            this._loadPersonaUsers();
        }
        if (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
            this.objectInfoLoaded = true;
        }
    }

    get personaId() {
        return this.personaDefinition.Id;
    }

    get personaName() {
        return this.personaDefinition.Name;
    }

    get personaDescription() {
        return this.personaDefinition[namespace + 'Description__c'];
    }

    get isEmpty() {
        return this.personaUsers?.length === 0;
    }

    get showSpinner() {
        return this.isRunning || !this.objectInfoLoaded;
    }

    get saveDisabled() {
        return this.isRunning || this.selectedCount === 0;
    }

    get usersAssignedLabel() {
        return formatLabel(label.Users_Assigned_to_Persona, [this.personaName]);
    }

    get showSystemAdminWarning() {
        return (
            this.selectedRecordsToAdd.length > 0 &&
            this.selectedRecordsToAdd.some(record => record.Id === this.currentUserId) &&
            this.currentUserProfileName === constants.SYSTEM_ADMINISTRATOR_PROFILE
        );
    }

    get addUserLabel() {
        return this.selectedCount === 0 ? formatLabel(label.Add_User_Button, ['']) : formatLabel(label.Add_User_Button, [this.selectedCount]);
    }

    get selectedRecordsToAdd() {
        const selectedRecords = this.template.querySelector('lightning-datatable[data-id="allUsersTable"]')?.getSelectedRows();
        return selectedRecords ? selectedRecords : [];
    }

    get selectedCount() {
        return this.selectedRecordsToAdd ? this.selectedRecordsToAdd.length : 0;
    }

    get addUsersToPersonaTitle() {
        return formatLabel(label.Add_Users_to_Persona_Title, [this.personaName]);
    }

    get availableAllUsers() {
        return this.searchTermAllUsers ? this.searchedAllUsers : this.allUsers;
    }

    get availablePersonaUsers() {
        return this.searchTermPersonaUsers ? this.searchedPersonaUsers : this.personaUsers;
    }

    handleClickCreateUser() {
        createUser();
    }

    handleClickAddUsers(event) {
        event.preventDefault();
        this.template.querySelector('c-cds-modal').show();
        this._loadAllUsers();
    }

    handleCancelModal() {
        this._closeModal();
    }

    handleRefreshAllUsersTable() {
        this._loadAllUsers();
    }

    async handleSaveAddUsers() {
        try {
            this.isRunning = true;
            let userIds = [];
            this.selectedRecordsToAdd.forEach(element => {
                userIds.push(element.Id);
            });
            await addUser({ personaId: this.personaId, userIds: userIds });
            this._closeModal();
            this.refreshPersonaUserRows();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            if (errorMessage.includes(label.Credential_Validation_Error.replace('{0}', ''))) {
                this._closeModal();
                this.refreshPersonaUserRows();
            } else {
                this.showError = true;
                this.errorMessage = errorMessage;
            }
        } finally {
            this.isRunning = false;
        }
    }

    handleRowAction(event) {
        const actionName = event.detail.action.name;
        const row = event.detail.row;
        switch (actionName) {
            case 'resetPassword':
                this.handleResetPassword(row.Id);
                break;
            case 'removeUser':
                this.handleRemoveRow(this.personaId, row.Id);
                break;
            default:
        }
    }

    async handleResetPassword(userId) {
        try {
            await resetPassword({ userId });
            showToastSuccess(this, { message: label.Reset_Password_Success_Message });
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    handleRemoveRow(personaId, userId) {
        const userConfirmationModal = this.template.querySelector('c-remove-user-confirmation-modal');
        userConfirmationModal.setPersonaUser(personaId, userId);
        userConfirmationModal.show();
    }

    refreshPersonaUserRows() {
        this._loadPersonaUsers();
        this._refreshPersonaDefinitions();
    }

    handleSortPersonaUsers(event) {
        this.sortDirectionPersonaUsers = event.detail.sortDirection;
        this.sortedByPersonaUsers = event.detail.fieldName;
        this._sortPersonaUsers();
    }

    handleSortAllUsers(event) {
        this.sortDirectionAllUsers = event.detail.sortDirection;
        this.sortedByAllUsers = event.detail.fieldName;
        if (this.searchTermAllUsers) {
            this._sortAllSearchedUsers();
        } else {
            this._sortAllUsers();
        }
    }

    handleSearchPersonaUsers(event) {
        try {
            const searchObj = event.detail;
            this.searchTermPersonaUsers = searchObj.searchTerm;
            this.searchedPersonaUsers = [...searchObj.searchedData];
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    handleClearSearchPersonaUsers() {
        try {
            this.searchTermPersonaUsers = '';
            this.searchedPersonaUsers = [];
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    async handleSearchAllUsers(event) {
        try {
            const searchObj = event.detail;
            this.searchTermAllUsers = searchObj.searchTerm;
            await this._loadUsersWithSearchTerm();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    handleClearSearchAllUsers() {
        try {
            this.searchTermAllUsers = '';
            this.searchedAllUsers = [];
            this._loadAllUsers();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }
    }

    // PRIVATE

    _createColumns(data) {
        this.personaUserColumns = [
            {
                label: data.fields[schema.NAME_FIELD.fieldApiName].label,
                fieldName: schema.NAME_FIELD.fieldApiName,
                sortable: true,
                searchable: true
            },
            {
                label: data.fields[schema.USERNAME_FIELD.fieldApiName].label,
                fieldName: schema.USERNAME_FIELD.fieldApiName,
                sortable: true,
                searchable: true
            },
            {
                label: data.fields[schema.EMAIL_FIELD.fieldApiName].label,
                fieldName: schema.EMAIL_FIELD.fieldApiName,
                sortable: true,
                searchable: true
            },
            {
                label: data.fields[schema.ISACTIVE_FIELD.fieldApiName].label,
                fieldName: schema.ISACTIVE_FIELD.fieldApiName,
                sortable: true
            },
            {
                type: 'action',
                typeAttributes: {
                    rowActions: [
                        { label: label.Reset_User_Password, name: 'resetPassword', iconName: 'utility:refresh', iconPosition: 'left' },
                        {
                            label: formatLabel(label.Remove_from_Persona_Button),
                            name: 'removeUser',
                            iconName: 'utility:ban',
                            iconPosition: 'left'
                        }
                    ]
                }
            }
        ];
        this.allUserColumns = [
            {
                label: data.fields[schema.NAME_FIELD.fieldApiName].label,
                fieldName: schema.NAME_FIELD.fieldApiName,
                sortable: true,
                searchable: true
            },
            { label: label.Copado_Persona, fieldName: 'PersonaName', sortable: true, searchable: true },
            {
                label: data.fields[schema.EMAIL_FIELD.fieldApiName].label,
                fieldName: schema.EMAIL_FIELD.fieldApiName,
                sortable: true,
                searchable: true
            },
            {
                label: data.fields[schema.USERNAME_FIELD.fieldApiName].label,
                fieldName: schema.USERNAME_FIELD.fieldApiName,
                sortable: true,
                searchable: true
            }
        ];
    }

    async _loadPersonaUsers() {
        try {
            this.isRunning = true;
            const personaUsers = await getUsersForPersona({ personaId: this.personaId });
            this.personaUsers = personaUsers.map(user => {
                return { ...user, [schema.ISACTIVE_FIELD.fieldApiName]: user[schema.ISACTIVE_FIELD.fieldApiName] ? label.Yes : label.No };
            });
            this._sortPersonaUsers();
            this._searchPersonaUsers();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isRunning = false;
        }
    }

    async _loadAllUsers() {
        try {
            this.isRunning = true;

            this.allUsers = this.allUsers.filter(user =>
                this.selectedRecordsToAdd.some(selectedRecord => selectedRecord.Id === user.Id)
            );

            this.selectedRecordsToAdd.forEach(selectedRecord => {
                if (!this.allUsers.some(user => user.Id === selectedRecord.Id)) {
                    this.allUsers.push(selectedRecord);
                }
            });

            const allUsers = await getUsers();

            allUsers
                .filter(personaUser => personaUser.persona?.Id !== this.personaId)  // Discard users with the same persona
                .forEach(personaUser => {
                    const userRecord = {
                        Id: personaUser.user.Id,
                        [schema.NAME_FIELD.fieldApiName]: personaUser.user[schema.NAME_FIELD.fieldApiName],
                        PersonaName: personaUser.persona ? personaUser.persona[schema.PERSONA_NAME_FIELD.fieldApiName] : label.Not_in_Copado,
                        [schema.EMAIL_FIELD.fieldApiName]: personaUser.user[schema.EMAIL_FIELD.fieldApiName],
                        [schema.USERNAME_FIELD.fieldApiName]: personaUser.user[schema.USERNAME_FIELD.fieldApiName],
                        [schema.ISACTIVE_FIELD.fieldApiName]: personaUser.user[schema.ISACTIVE_FIELD.fieldApiName] ? label.Yes : label.No
                    };

                    // Add the userRecord only if it doesn't already exist in allUsers
                    if (!this.allUsers.some(user => user.Id === userRecord.Id)) {
                        this.allUsers.push(userRecord);
                    }
                });

            this._sortAllUsers();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isRunning = false;
        }
    }

    async _loadUsersWithSearchTerm() {
        try {
            this.isRunning = true;

            this.searchedAllUsers = this.searchedAllUsers.filter(user =>
                this.selectedRecordsToAdd.some(selectedRecord => selectedRecord.Id === user.Id)
            );

            this.selectedRecordsToAdd.forEach(selectedRecord => {
                if (!this.searchedAllUsers.some(user => user.Id === selectedRecord.Id)) {
                    this.searchedAllUsers.push(selectedRecord);
                }
            });

            const searchedUsers = await getUsersWithSearchTerm({ searchTerm: this.searchTermAllUsers });

            searchedUsers
                .filter(personaUser => personaUser.persona?.Id !== this.personaId)  // Discard users with the same persona
                .forEach(personaUser => {
                    const userRecord = {
                        Id: personaUser.user.Id,
                        [schema.NAME_FIELD.fieldApiName]: personaUser.user[schema.NAME_FIELD.fieldApiName],
                        PersonaName: personaUser.persona ? personaUser.persona[schema.PERSONA_NAME_FIELD.fieldApiName] : label.Not_in_Copado,
                        [schema.EMAIL_FIELD.fieldApiName]: personaUser.user[schema.EMAIL_FIELD.fieldApiName],
                        [schema.USERNAME_FIELD.fieldApiName]: personaUser.user[schema.USERNAME_FIELD.fieldApiName],
                        [schema.ISACTIVE_FIELD.fieldApiName]: personaUser.user[schema.ISACTIVE_FIELD.fieldApiName] ? label.Yes : label.No
                    };

                    // Add the userRecord only if it doesn't already exist in searchedAllUsers
                    if (!this.searchedAllUsers.some(user => user.Id === userRecord.Id)) {
                        this.searchedAllUsers.push(userRecord);
                    }
                });

            this._sortAllSearchedUsers();
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isRunning = false;
        }
    }

    _sortPersonaUsers() {
        if (this.personaUserColumns.length > 0) {
            this.personaUsers = getSortedData(this.personaUserColumns, this.personaUsers, {
                name: this.sortedByPersonaUsers,
                sortDirection: this.sortDirectionPersonaUsers
            });
        }
    }

    _searchPersonaUsers() {
        if (this.personaUserColumns.length > 0 && this.searchTermPersonaUsers) {
            this.searchedPersonaUsers = getSearchedData(this.personaUserColumns, this.personaUsers, this.searchTermPersonaUsers);
        }
    }

    _sortAllUsers() {
        if (this.allUserColumns.length > 0) {
            this.allUsers = getSortedData(this.allUserColumns, this.allUsers, {
                name: this.sortedByAllUsers,
                sortDirection: this.sortDirectionAllUsers
            });
        }
    }

    _sortAllSearchedUsers() {
        if (this.allUserColumns.length > 0) {
            this.searchedAllUsers = getSortedData(this.allUserColumns, this.searchedAllUsers, {
                name: this.sortedByAllUsers,
                sortDirection: this.sortDirectionAllUsers
            });
        }
    }

    _closeModal() {
        this.template.querySelector('c-cds-modal').hide();
        this.searchTermAllUsers = '';
        this.searchedAllUsers = [];
        this.showError = false;
        this.errorMessage = null;
    }

    _refreshPersonaDefinitions() {
        this.dispatchEvent(new CustomEvent('refreshpersona', { bubbles: true, composed: true }));
    }
}