public with sharing class GitRepoAuthenticationController {
    @AuraEnabled
    public static FieldSetForm getFields() {
        List<Schema.FieldSetMember> fieldSetMembers = SObjectType.Git_Repository__c.fieldSets.CustomFields.getFields();
        List<FormField> fields = new List<FormField>();
        for (Schema.FieldSetMember fsm : fieldSetMembers) {
            FormField form = new FormField(fsm);
            fields.add(form);
        }
        FieldSetForm form = getHeaderFields();
        form.Fields.addAll(fields);
        System.debug('returning fields' + form);
        return form;
    }

    private static FieldSetForm getHeaderFields() {
        List<Schema.FieldSetMember> fieldSetMembers = SObjectType.Git_Repository__c.fieldSets.Copado_Header_Fields.getFields();
        List<FormField> fields = new List<FormField>();
        for (Schema.FieldSetMember fsm : fieldSetMembers) {
            FormField form = new FormField(fsm);
            fields.add(form);
        }
        FieldSetForm form = new FieldSetForm();
        form.Fields = fields;
        System.debug('returning fields' + form);
        return form;
    }

    public class FieldSetForm {
        @AuraEnabled
        public List<FormField> Fields { get; set; }

        public FieldSetForm() {
            Fields = new List<FormField>();
        }
    }
}