trigger MyAccountTrigger on Account (before insert, before update) {
    for (Account acc : Trigger.new) {
        if (acc.Name == 'Test Account') {
            acc.Description = 'This is a test account.';
        }
    }
}