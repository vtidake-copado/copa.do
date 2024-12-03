import { LightningElement, api, track, wire } from 'lwc';

import { updateRecord } from 'lightning/uiRecordApi';
import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { refreshApex } from '@salesforce/apex';

import { showToastError, showToastSuccess } from 'c/copadocoreToastNotification';
import { uniqueKey, handleAsyncError, autoFormValidation, flushPromises, reduceErrors } from 'c/copadocoreUtils';
import lookupSearch from '@salesforce/apex/CustomLookupComponentHelper.search';

import getCriteria from '@salesforce/apex/BackPromotionAwarenessCtrl.getCriteriaFromSystemProperty';
import getAllEnvironmentsOfPipeline from '@salesforce/apex/BackPromotionAwarenessCtrl.getAllEnvironmentsOfPipeline';
import createSystemProperty from '@salesforce/apex/BackPromotionAwarenessCtrl.createSystemProperty';

import {
    label,
    schema,
    AND,
    OR,
    CUSTOM,
    REFERENCE,
    conditionLookUpOperators
} from './constants';
import {
    getSymbolForConditionLogic,
    getWhereCondition,
    reorder,
    getOperatorOptionsByFieldType,
    getInputTypeByFieldType,
    getInputVariantByFieldType,
    getInputClassByFieldType,
    getInputLayoutClassByFieldType,
    getDefaultValueByFieldType
} from './utils';

export default class OutOfSyncFilters extends LightningElement {
    @api pipelineId;
    @api noEditPermission;

    @track selectedEnvironmentIds = [];
    @track conditions = [];
    @track _criteriaObject = {};

    label = label;

    readOnly = true;
    isLoading = true;

    conditionLookUpOperators = conditionLookUpOperators;

    objectFields = [];
    environments = []
    _selectedEnvironmentIdsButNotSaved = [];
    pipelineName;
    modalBody;
    _objectInfo;

    // GETTER

    get showConfigureCriteriaButton() {
        return !this.noEditPermission;
    }

    get nothingConfigured() {
        return !this.currentFilterCriteria;
    }

    get isEditMode() {
        return !this.readOnly;
    }

    get noConditions() {
        return !this.conditions.length;
    }

    get currentFilterCriteria() {
        return this._criteriaObject.value;
    }

    get fieldComboboxLabel() {
        return label.FIELD_LABEL + ' (' + label.FIELD_API_NAME + ')';
    }

    get criteriaIsConfigured() {
        return (
            this._criteriaObject[schema.SYSTEM_PROPERTY_VALUE.fieldApiName]
        );
    }

    get showSelectedTypesSection() {
        return this._selectedEnvironmentIdsButNotSaved.length;
    }

    get selectedEnvironments() {
        return this.environments.filter(ele => this._selectedEnvironmentIdsButNotSaved.includes(ele.value));
    }

    get nameOfSelectedEnvironments() {
        return this.selectedEnvironments.map(ele => ele.label).join(';');
    }

    @wire(getObjectInfo, { objectApiName: schema.USER_STORY_OBJECT.objectApiName })
    getMainObjectInfo({ error, data }) {
        if (data) {
            this._objectInfo = data;
            const sortedFields = new Map(Object.entries(data.fields).sort((a, b) => String(a[1].label).localeCompare(b[1].label)));
            for (const [key, value] of sortedFields) {
                this.objectFields.push({ label: value.label + ' (' + value.apiName + ')', value: value.apiName });
            }
            this._setCurrentValues();
        } else if (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
            this.isLoading = false;
        }
    }

    async connectedCallback() {
        try {
            this._criteriaObject = JSON.parse(await getCriteria({ pipelineId: this.pipelineId, hasEditAccess: !this.noEditPermission }));
            const environmentsInPipeline = await getAllEnvironmentsOfPipeline({ pipelineId: this.pipelineId });
            this.environments = JSON.parse(environmentsInPipeline)?.map(ele => ({
                value: ele.envId,
                label: ele.name
            }));
            
            if(this._criteriaObject?.value) {
                this.selectedEnvironmentIds = this._selectedEnvironmentIdsButNotSaved = JSON.parse(this._criteriaObject.value).triggerEnvironmentIds;
                this._setCurrentValues();
            }
			if(!this._criteriaObject?.systemPropertyId && !this.noEditPermission) {
				this._criteriaObject.value = JSON.parse(this._criteriaObject.value);
				await this._createSystemProperty();
			}
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        } finally {
            this.isLoading = false;
        }
    }

    // HANDLERS

    handleEnvironmentsSelections(event) {
        this._selectedEnvironmentIdsButNotSaved = event.detail;
    }

    async handleEdit() {
        this.readOnly = false;
        await flushPromises();
        this._markCheckboxInputs();
        this._markLookUpInputs();
    }

    handleRemove(event){
        const removedEnvironment = event.detail.name;
        this.template.querySelector('c-multi-select-combo-box').handleRemoveValue(removedEnvironment);
        this._selectedEnvironmentIdsButNotSaved = this._selectedEnvironmentIdsButNotSaved.filter(element => element !== removedEnvironment);
    }

    handleConfigureCriteria() {
        if (this.criteriaIsConfigured) {
            this.modalBody = label.CONFIGURE_CRITERIA_ERROR_BODY;
            this.template.querySelector('c-copadocore-modal').show();
            return;
        }
        this.handleEdit();
        this._setDefaultValues();
        this.handleAddCondition();
    }

    handleCloseModal() {
        this.template.querySelector('c-copadocore-modal').hide();
    }

    async handleEditMetrics() {
        this.readOnly = false;
        await flushPromises();
        this._markCheckboxInputs();
        this._markLookUpInputs();

        // eslint-disable-next-line @lwc/lwc/no-async-operation
        setTimeout(() => {
            this.template.querySelector('c-multi-select-combo-box').setSelection(this.selectedEnvironmentIds);
        }, 0);
        
    }

    handleAddCondition() {
        const newElement = {
            id: uniqueKey('condition'),
            conditionNumber: this.conditions.length + 1,
            field: '',
            fieldLabel: '',
            operator: '',
            operatorOptions: [],
            operatorLabel: '',
            inputClass: 'slds-m-bottom_xx-small',
            inputLayoutClass: 'slds-p-left_medium',
            value: null,
            isLookUp: false,
            lookUpRecordTitle: '',
            lookUpRecordUrl: '',
            lookUpObjectApiName: null,
            lookUpObjectLabel: ''
        };
        this.conditions.push(newElement);
    }

    handleDeleteCondition(event) {
        const conditionId = event.target.dataset.conditionid;
        this.conditions = this.conditions.filter((o) => o.id !== conditionId);
        reorder(this.conditions);
    }

    handleChangeField(event) {
        const index = this._findConditionIndex(event);
        this._setFieldInCondition(this.conditions[index], event.target.value);
    }

    handleChangeOperator(event) {
        const index = this._findConditionIndex(event);
        this._setOperatorInCondition(this.conditions[index], event.target.value);
    }

    handleChangeValue(event) {
        const index = this._findConditionIndex(event);
        switch (this.conditions[index].inputType) {
            case 'checkbox':
                this.conditions[index].value = event.target.checked;
                break;
            case 'number':
                this.conditions[index].value = !!event.target.value ? event.target.value : null;
                break;
            case 'reference':
                if (this._isLookUpOperatorInCondition(this.conditions[index])) {
                    this._setLookUpInConditionOnChange(this.conditions[index], event);
                } else {
                    this.conditions[index].value = event.target.value;
                }
                break;
            default:
                this.conditions[index].value = event.target.value;
                break;
        }
    }

    handleCancel() {
        this._criteriaObject.value = JSON.stringify(this._criteriaObject.value);
        this._setCurrentValues();
        this.readOnly = true;
    }

    async handleSave() {
        this.isLoading = true;
        const formValidation = autoFormValidation(this.template, this);

        if (!formValidation) {
            this.isLoading = false;
            return;
        }

        try {
            const userStoryCriteria = this._generateFilterCriteria();
            this.selectedEnvironmentIds = this._selectedEnvironmentIdsButNotSaved;

            if(!this._criteriaObject.value) {
                this._criteriaObject.value = { triggerEnvironmentIds: this.selectedEnvironmentIds, userStoryFieldCriteria: userStoryCriteria?.whereCondition, internalCriteria: userStoryCriteria?.internalCriteria };
            } else { 
                this._criteriaObject.value = typeof this._criteriaObject.value === 'string' ? JSON.parse(this._criteriaObject.value) : this._criteriaObject.value;
                this._criteriaObject.value = {...this._criteriaObject.value, triggerEnvironmentIds: this.selectedEnvironmentIds ,userStoryFieldCriteria: userStoryCriteria?.whereCondition, internalCriteria: userStoryCriteria?.internalCriteria}
            }

            if(this._criteriaObject.systemPropertyId) {
                await this._updateSystemProperty();
            } else {
				await this._createSystemProperty();
            }
                
            refreshApex(this._criteriaObject);
            showToastSuccess(this, { message: this.label.CRITERIA_SUCCESSFULLY_UPDATED });
        } catch (error) {
            const errorMessage = reduceErrors(error);
            showToastError(this, { message: errorMessage });
        }

        this.isLoading = false;
        this.readOnly = true;
    }

    async handleLookupSearch(event) {
        const index = this._findConditionIndex(event);
        const lookupElement = event.target;

        const safeSearch = handleAsyncError(this._lookupSearch, {
            title: label.ERROR_SEARCHING_RECORDS
        });

        const queryConfig = {
            searchField: `Name`,
            objectName: this.conditions[index].lookUpObjectApiName,
            searchKey: event.detail.searchTerm,
            filterFormattingParameters: [event.detail.searchTerm]
        };

        const result = await safeSearch(this, {
            queryConfig,
            objectLabel: this.conditions[index].lookUpObjectLabel
        });

        if (result) {
            lookupElement.setSearchResults(result);
        }
    }

    // PRIVATE

    async _createSystemProperty() {
        this._criteriaObject.systemPropertyId = await createSystemProperty({ pipelineId: this.pipelineId, value: JSON.stringify(this._criteriaObject.value)});
    }

	async _updateSystemProperty() {
		await updateRecord({
			fields: {
				Id: this._criteriaObject.systemPropertyId,
				[schema.SYSTEM_PROPERTY_VALUE.fieldApiName]: JSON.stringify(this._criteriaObject.value)
			}
		});
	}

    _generateFilterCriteria() {
        let result = null;

        if (this.conditions.length > 0) {
            const template = '{$OBJECT.FIELD.OPERATOR("VALUE")}';
            let internalCriteria = '';
            for (const [index, condition] of this.conditions.entries()) {
                let internalCriteriaTemp = `${template
                    .replace(/OBJECT/, schema.USER_STORY_OBJECT.objectApiName)
                    .replace(/FIELD/, condition.field)
                    .replace(/OPERATOR/, condition.operator)
                    .replace(/VALUE/, condition.value)}`;

                if (this._isReferenceFieldType(condition) && this._isLookUpOperatorInCondition(condition)) {
                    internalCriteriaTemp = this._getReferenceCriteria(template, condition, internalCriteriaTemp);
                }

                internalCriteria += internalCriteriaTemp;
                if (index !== this.conditions.length - 1) {
                    internalCriteria += ' ' + getSymbolForConditionLogic(AND) + ' ';
                }
            }

            result = {
                internalCriteria: internalCriteria,
                whereCondition: this._convertToWhereCondition(internalCriteria)
            };
        }

        return result;
    }

    async _getConditionsFromInternalCriteria(internalCriteria) {
        let result = [];

        if (internalCriteria) {
            let conditions = internalCriteria
                .split(/(&&|[|]{2})/)
                .filter((item) => item !== '&&' && item !== '||')
                .map((item) => item.trim());

            let index = 0;
            for await (const item of conditions) {
                let elements = item.split(/[(\).]+(?![^(]*\)})/);
                elements = elements.filter((elem) => {
                    return elem != null && elem !== '';
                });

                let data = {
                    id: uniqueKey('condition'),
                    conditionNumber: index + 1,
                    field: elements[1],
                    value: null,
                    valueClass: ''
                };

                await this._setFieldInCondition(data, elements[1]);

                let valueStr = '';
                if (elements[2].indexOf('(') > -1) {
                    this._setOperatorInCondition(data, elements[2].split('(')[0]);
                    valueStr = elements[2].split('(')[1].replaceAll('"', "'");
                } else {
                    this._setOperatorInCondition(data, elements[2]);
                    valueStr = elements[3].replaceAll('"', "'");
                    data.lookUpRecordTitle = elements[7].split('(')[1].replaceAll('"', '');
                    data.lookUpRecordUrl = '/' + valueStr.match("'(.*)'")[1];
                }
                const auxStr = valueStr.match("'(.*)'");
                data.value = auxStr[1];
                data.valueClass = data.value.indexOf('null') > -1 ? 'hide-null-value' : '';

                result.push(data);
                index++;
            }
        }
        return result;
    }

    _getConditionLogicFromInternalCriteria(internalCriteria) {
        let result = AND;

        if (internalCriteria) {
            const logicElements = internalCriteria.split(/(&&|[|]{2})/);
            let logic = '';
            let conditionNumber = 1;

            logicElements.forEach((element) => {
                if (element === '&&') {
                    logic = `${logic} ${AND} `;
                } else if (element === '||') {
                    logic = `${logic} ${OR} `;
                } else {
                    if (element.includes('( {$') || element.includes('({$')) {
                        const brackets = element.substring(0, element.indexOf('{')).replace(/\s/g, '');
                        logic = `${logic}${brackets}${conditionNumber}`;
                    } else if (element.includes(')} )') || element.includes(')})')) {
                        const brackets = element.substring(element.indexOf('}') + 1, element.lenght).replace(/\s/g, '');
                        logic = `${logic}${conditionNumber}${brackets}`;
                    } else {
                        logic = `${logic}${conditionNumber}`;
                    }
                    conditionNumber++;
                }
            });
            if (logic.indexOf(AND) !== -1) {
                result = AND;
            } else if (logic.indexOf(OR) !== -1) {
                result = OR;
            }
        } else {
            result = CUSTOM;
        }

        return result;
    }

    _convertToWhereCondition(internalCriteria) {
        let result = '';

        if (internalCriteria) {
            const logicElements = internalCriteria.split(/(&&|[|]{2})/);
            let logic = '';

            logicElements.forEach((element) => {
                if (element.length > 0) {
                    if (element === '&&') {
                        logic = `${logic} ${AND} `;
                    } else if (element === '||') {
                        logic = `${logic} ${OR} `;
                    } else {
                        let elements = element.split(/[(\).]+(?![^(]*\)})/);
                        elements = elements.filter((elem) => {
                            return elem != null && elem !== '';
                        });

                        const field = elements[1];
                        let operator = '';
                        let value = '';
                        if (elements[2].indexOf('(') > -1) {
                            operator = elements[2].split('(')[0];
                            value = elements[2].split('(')[1].replaceAll('"', "'").match("'(.*)'")[1];
                        } else {
                            operator = elements[2];
                            value = elements[3].replaceAll('"', "'").match("'(.*)'")[1];
                        }

                        const condition = getWhereCondition(field, operator, value, this._objectInfo.fields[field].dataType);

                        logic = `${logic}${condition}`;
                    }
                }
            });

            result = logic;
        }

        return result;
    }

    _findConditionIndex(event) {
        return this.conditions.findIndex((item) => item.id === event.target.dataset.conditionid);
    }

    async _setCurrentValues() {
        if (this.currentFilterCriteria) {
            const internalCriteria = JSON.parse(this.currentFilterCriteria).internalCriteria;
            this.conditions = await this._getConditionsFromInternalCriteria(internalCriteria);
        }
    }

    _setDefaultValues() {
        this.conditions = [];
    }

    _getFieldLabel(fieldApiName) {
        const option = this.objectFields.find((field) => field.value === fieldApiName);
        return option ? option.label : fieldApiName;
    }

    _getOperatorLabel(condition, operatorValue) {
        const option = condition.operatorOptions.find((operator) => operator.value === operatorValue);
        return option ? option.label : operatorValue;
    }

    _markCheckboxInputs() {
        this.conditions.forEach((condition) => {
            if (condition.inputType === 'checkbox' && condition.value === 'true') {
                const checkboxInput = this.template.querySelector('lightning-input[data-conditionId="' + condition.id + '"]');
                if (checkboxInput) {
                    checkboxInput.checked = true;
                }
            }
        });
    }

    _markLookUpInputs() {
        this.conditions.forEach((condition) => {
            if (
                this._isReferenceFieldType(condition) &&
                this._isLookUpOperatorInCondition(condition) &&
                condition.value &&
                condition.value.indexOf('null') === -1
            ) {
                const lookupInput = this.template.querySelector(`c-lookup[data-conditionId="${condition.id}"]`);
                if (lookupInput) {
                    lookupInput.selection = [
                        {
                            Id: condition.value,
                            sObjectType: this._objectInfo.fields[condition.field].referenceToInfos[0]['apiName'],
                            icon: 'standard:choice',
                            title: condition.lookUpRecordTitle
                        }
                    ];
                }
            }
        });
    }

    async _setFieldInCondition(condition, field) {
        condition.field = field;
        condition.fieldLabel = this._getFieldLabel(field);
        condition.operatorOptions = getOperatorOptionsByFieldType(this._objectInfo.fields[field].dataType);
        condition.operator = condition.operatorOptions[0].value;
        condition.operatorLabel = condition.operatorOptions[0].label;
        condition.inputType = getInputTypeByFieldType(this._objectInfo.fields[field].dataType);
        condition.inputVariant = getInputVariantByFieldType(this._objectInfo.fields[field].dataType);
        condition.inputClass = getInputClassByFieldType(this._objectInfo.fields[field].dataType);
        condition.inputLayoutClass = getInputLayoutClassByFieldType(condition.inputType);
        if (this._isReferenceFieldType(condition)) {
            this._setLookUpConfigs(condition);
        }
        // make sure input component is re-rendered (because the input type has changed), otherwise when we set the value, the input is not available yet
        await flushPromises();
        condition.value = getDefaultValueByFieldType(this._objectInfo.fields[field].dataType);
    }

    _setOperatorInCondition(condition, operatorValue) {
        condition.operator = operatorValue;
        condition.operatorLabel = this._getOperatorLabel(condition, operatorValue);
        if (this._isReferenceFieldType(condition)) {
            condition.value = null;
            condition.isLookUp = this._isLookUpOperatorInCondition(condition);
        }
    }

    /**
     * Wrapper function with self (although unused) parameter so it can be used by handlerAsyncError
     */
    _lookupSearch(self, queryConfig) {
        return lookupSearch(queryConfig);
    }

    _isReferenceFieldType(condition) {
        return condition.inputType === 'reference';
    }

    _isLookUpOperatorInCondition(condition) {
        const result = this.conditionLookUpOperators.find((operator) => operator.value === condition.operator);
        return result;
    }

    _setLookUpConfigs(condition) {
        condition.isLookUp = true;
        condition.lookUpObjectApiName = this._objectInfo.fields[condition.field].referenceToInfos[0].apiName;
        condition.lookUpObjectLabel = this._objectInfo.fields[condition.field].label;
    }

    _setLookUpInConditionOnChange(condition, event) {
        const selectedValueInformation = event.target.getSelection().length ? event.target.getSelection()[0] : '';
        if (selectedValueInformation) {
            condition.value = selectedValueInformation.id;
            condition.lookUpRecordTitle = selectedValueInformation.title;
            condition.lookUpRecordUrl = '/' + selectedValueInformation.id;
        } else {
            condition.value = null;
            condition.lookUpRecordTitle = '';
            condition.lookUpRecordUrl = '';
        }
    }

    _getReferenceCriteria(template, condition, criteria) {
        criteria = criteria.substring(0, criteria.length - 1);
        let lookUpTitleCriteria = `${template
            .replace(/OBJECT/, schema.USER_STORY_OBJECT.objectApiName)
            .replace(/FIELD/, condition.field.replace('__c', '__r.Name'))
            .replace(/OPERATOR/, condition.operator)
            .replace(/VALUE/, condition.lookUpRecordTitle)}`;
        lookUpTitleCriteria = lookUpTitleCriteria.substring(1, lookUpTitleCriteria.length);
        criteria += ' ' + REFERENCE + ' ' + lookUpTitleCriteria;
        return criteria;
    }
}