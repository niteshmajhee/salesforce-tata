trigger TestObjectTrigger on Test_Obj__c (before insert) {
	TestObjectTriggerHandler.testFieldNotNull(Trigger.new);
}