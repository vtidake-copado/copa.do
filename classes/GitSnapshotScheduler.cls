public with sharing class GitSnapshotScheduler implements Schedulable {
    public String gitSnapshotId = '';
    public String gitSnapshotMessage = '';

    public GitSnapshotScheduler(String gitSnapshotId, String gitSnapshotMessage) {
        this.gitSnapshotId = gitSnapshotId;
        this.gitSnapshotMessage = gitSnapshotMessage;
    }

    public void execute(SchedulableContext scheduleContext) {
        Actions.TakeGitSnapshotRequest request = new Actions.TakeGitSnapshotRequest();
        request.snapshotId = gitSnapshotId;
        request.message = gitSnapshotMessage != null ? gitSnapshotMessage : Label.GitSnapshotScheduleCommitMessage;

        Actions.GitSnapshotService.takeSnapshot(request);
    }
}