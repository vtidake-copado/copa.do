public class FormField {
    public FormField(Schema.FieldSetMember f) {
        this.IsRequired = true;
        this.APIName = f.fieldPath;
        this.Label = f.label;
        this.Required = true;
        this.Type = String.valueOf(f.getType());
        this.IsRequired = true;
    }

    public FormField(Boolean required) {
        this.IsRequired = required;
    }

    @AuraEnabled
    public Boolean IsRequired { get; set; }
    @AuraEnabled
    public String APIName { get; set; }
    @AuraEnabled
    public String Label { get; set; }
    @AuraEnabled
    public Boolean Required { get; set; }
    @AuraEnabled
    public String Type { get; set; }
}