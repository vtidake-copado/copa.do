<?xml version="1.0" encoding="UTF-8"?>
<CustomMetadata xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <label>EHR Encounter Trigger</label>
    <protected>false</protected>
    <values>
        <field>HealthCloudGA__Active__c</field>
        <value xsi:type="xsd:boolean">false</value>
    </values>
    <values>
        <field>HealthCloudGA__Object__c</field>
        <value xsi:type="xsd:string">EhrEncounter__c</value>
    </values>
    <values>
        <field>HealthCloudGA__TriggerEvents__c</field>
        <value xsi:type="xsd:string">before_insert,before_update,after_update</value>
    </values>
</CustomMetadata>
