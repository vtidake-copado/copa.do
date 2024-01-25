/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class GroupAssignmentBatchable implements Database.Batchable<SObject>, Database.Stateful {
    global static Boolean isRecordRollupBatchContext;
    global GroupAssignmentBatchable() {

    }
    global GroupAssignmentBatchable(List<FinServ.GroupAssignmentBatchable.RecordRollupConfig> recordRollupConfigs) {

    }
    global static void runRecordRollupJob(List<FinServ.GroupAssignmentBatchable.RecordRollupConfig> recordRollupConfigs) {

    }
global class RecordRollupConfig {
    global RecordRollupConfig(String objectName, Datetime startTime, Datetime endTime) {

    }
    global RecordRollupConfig(String objectName, Datetime startTime, Datetime endTime, Integer scope) {

    }
}
}
