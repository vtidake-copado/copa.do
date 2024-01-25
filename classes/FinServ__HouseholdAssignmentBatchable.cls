/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class HouseholdAssignmentBatchable implements Database.Batchable<SObject>, Database.Stateful {
    global HouseholdAssignmentBatchable(List<String> rollupObjects) {

    }
    global HouseholdAssignmentBatchable(String rollupObject) {

    }
    global static Id runJob(String rollupObject) {
        return null;
    }
    global static Id runJob(List<FinServ.HouseholdAssignmentBatchable.RecordRollupConfig> recordRollupConfigs) {
        return null;
    }
    global static Id runJob(List<String> rollupObjects) {
        return null;
    }
global class RecordRollupConfig {
    global RecordRollupConfig(String objectName, Datetime startTime, Datetime endTime) {

    }
    global RecordRollupConfig(String objectName, Datetime startTime, Datetime endTime, Integer scope) {

    }
}
}
