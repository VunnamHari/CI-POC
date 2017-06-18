trigger CaseTrigger on Case (after insert, after update) {
    if (Trigger.isInsert && Trigger.isAfter) {
        JCFS.API.createJiraIssue('10000', '10002');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        JCFS.API.pushUpdatesToJira();
    }
}