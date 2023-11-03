<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>update_account</fullName>
        <field>Active__c</field>
        <literalValue>No</literalValue>
        <name>update account</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>TB WF rule</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Account.Active__c</field>
            <operation>equals</operation>
            <value>Yes</value>
        </criteriaItems>
        <criteriaItems>
            <field>Account.NumberOfEmployees</field>
            <operation>equals</operation>
            <value>3</value>
        </criteriaItems>
        <description>Description in WF Rule MOD</description>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>update_account</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.CreatedDate</offsetFromField>
            <timeLength>29</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>update_account</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.CreatedDate</offsetFromField>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>US Test Workflow Rule</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>equals</operation>
            <value>Arturo</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
