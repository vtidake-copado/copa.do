public inherited sharing class EnvironmentVariableExpression extends DynamicExpression {
    private static final Pattern CONTEXT_PATTERN1 = Pattern.compile('(?i)\\{\\s*\\$?(Context)\\.EnvVar\\.([^.\\}]+)\\s*\\}');
    private static final Pattern CONTEXT_PATTERN2 = Pattern.compile('(?i)\\{\\s*\\$?(Source|Destination)\\.EnvVar\\.([^.\\}]+)\\s*\\}');
    
    private SObject record;
    private String expression;
    private String objectName;

    // CONSTRUCTOR

    public EnvironmentVariableExpression(String contextId) {
        this.contextId = contextId;
    }

    // PUBLIC

    public override Boolean matches(String expression) {
        this.expression = expression;
        return (CONTEXT_PATTERN1.matcher(expression).matches() || CONTEXT_PATTERN2.matcher(expression).matches());
    }

    public override void prepare() {
        objectName = objectName(recordId());
        Matcher contextMatcher1 = CONTEXT_PATTERN1.matcher(expression);

        if (String.isNotBlank(objectName)) {
            if (objectName.equalsIgnoreCase('Deployment_Job__c')) {
                record = [SELECT Source_Id__c, Destination_Id__c FROM Deployment_Job__c WHERE Id = :contextId WITH SECURITY_ENFORCED];
            } else if (objectName.equalsIgnoreCase('JobStep__c')) {
                record = [SELECT Source_Id__c, Destination_Id__c, JobExecution__r.ParentId__c FROM JobStep__c WHERE Id = :contextId WITH SECURITY_ENFORCED];
            } else if(contextMatcher1.matches()){
                throw new ApplicationException(String.format(Label.invalidContextId, new List<String>{ expression, Label.Environment_Variable }));
            } else {
                throw new ApplicationException(String.format(Label.Context_Id_Not_Supported_For_Expression, new List<String>{ expression }));
            }
        } else {
            throw new ApplicationException(String.format(Label.Context_Id_Not_Supported_For_Expression, new List<String>{ expression }));
        }
    }

    public override Jobs.DynamicExpressionEvaluateResult parse(String expression) {
        Matcher contextMatcher1 = CONTEXT_PATTERN1.matcher(expression);
        Matcher contextMatcher2 = CONTEXT_PATTERN2.matcher(expression);
        String value;
        String name;
        Id recordId;

        if (contextMatcher1.matches() && objectName.equalsIgnoreCase('JobStep__c')) {
            String contextEnvironmentField = contextEnvironmentField();
            name = contextMatcher1.group(2);
            recordId = (Id) record.get(contextEnvironmentField);
        } else if (contextMatcher2.matches()) {
            name = contextMatcher2.group(2);
            recordId = contextMatcher2.group(1) == 'Source' ? getSourceId() : getDestinationId();
        }
        value = getEnvironmentVariableValue(name, recordId);

        return new Jobs.DynamicExpressionEvaluateResult(expression, value, true);
    }

    // PRIVATE

    private String contextEnvironmentField() {
        Id parentId = (Id) getValue(record, 'JobExecution__r.ParentId__c');
        String parentObjectName = objectName(parentId);
        if (parentObjectName == 'User_Story_Commit__c' || parentObjectName == 'Promotion__c') {
            return 'Source_Id__c';
        } else if (parentObjectName == 'Deployment__c') {
            return 'Destination_Id__c';
        }

        throw new ApplicationException(Label.InvalidContextForEnvironmentVariableExpression);
    }

    private String getEnvironmentVariableValue(String name, Id recordId){
        List<Environmental_Variable__c> envVars = [SELECT Id, Value__c FROM Environmental_Variable__c WHERE Name = : name AND Environment__c = : recordId WITH SECURITY_ENFORCED LIMIT 1];
        String value;
        if(!envVars.isEmpty()){
            value = envVars[0].Value__c;
        } else {
            throw new ApplicationException(Label.NoEnvVarForTheScopeExpression);
        }
        return value;
    }

    private Id getSourceId() {
        return (Id) record.get('Source_Id__c');
    }

    private Id getDestinationId() {
        return (Id) record.get('Destination_Id__c');
    }
}