public class TestObjectTriggerHandler {
    public static void testFieldNotNull(List<Test_Obj__c> newList){
        For(Test_Obj__c t: newList){
            if(t.Test_Field1__c == null || t.Test_Field2__c == null){
                t.addError('These Are Mandatory Fields, so it Should not be null');
            }
        }
    }
}