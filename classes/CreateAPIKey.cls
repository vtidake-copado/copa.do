@SuppressWarnings('OperationWithLimitsInLoop')
public with sharing class CreateAPIKey implements Queueable, Finalizer, Database.AllowsCallouts {
    List<Id> userIds;

    // CONSTRUCTOR

    public CreateAPIKey(List<Id> userIds) {
        this.userIds = userIds;
    }

    // PUBLIC

    public void execute() {
        Integer loopLimit = Math.min(userIds.size(), 25);

        // NOTE: SF Limitation for only upto 50 Queueable jobs in a transaction
        for (Integer i = 0; i < loopLimit; i++) {
            Id userId = userIds.remove(0);
            if (Test.isRunningTest() || userIds.size() == 1) {
                createKey(userId);
            } else {
                System.enqueueJob(new CreateAPIKey(new List<Id>{ userId }));
            }
        }

        if (!userIds.isEmpty()) {
            System.enqueueJob(this);
        }
    }

    public void execute(QueueableContext context) {
        if (userIds.isEmpty()) {
            return;
        }

        Id userId = userIds.remove(0);
        createKey(userId);

        if (!userIds.isEmpty()) {
            System.attachFinalizer(this);
        }
    }

    public void execute(FinalizerContext ctx) {
        System.enqueueJob(this);
    }

    // PRIVATE

    private void createKey(Id userId) {
        if (userId != null) {
            DeployAPI.createAPIKey(userId);
        }
    }
}