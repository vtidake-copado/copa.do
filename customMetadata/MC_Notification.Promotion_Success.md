<?xml version="1.0" encoding="UTF-8"?>
<CustomMetadata xmlns="http://soap.sforce.com/2006/04/metadata" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <label>Successful Promotion</label>
    <protected>true</protected>
    <values>
        <field>Active__c</field>
        <value xsi:type="xsd:boolean">true</value>
    </values>
    <values>
        <field>Description__c</field>
        <value xsi:nil="true"/>
    </values>
    <values>
        <field>Subject__c</field>
        <value xsi:type="xsd:string">Promotion successful - {PromotionName} - {SourceEnv} =&gt; {TargetEnv}</value>
    </values>
    <values>
        <field>Template__c</field>
        <value xsi:type="xsd:string">Hi {UserName},

&lt;br/&gt;&lt;br/&gt;

The Promotion &lt;b&gt;&lt;a href=&quot;{PromotionLink}&quot;&gt;{PromotionName}&lt;/a&gt;&lt;/b&gt; from source environment {SourceEnv} to target environment {TargetEnv} finished successfully.</value>
    </values>
</CustomMetadata>
