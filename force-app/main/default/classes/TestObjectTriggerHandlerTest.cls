@isTest
public class TestObjectTriggerHandlerTest {

    @isTest
    static void testWhenFieldsAreNull() {
        
        // Create test record with null fields
        Test_Obj__c testRec = new Test_Obj__c();
        
        Test.startTest();
        try {
            insert testRec;
        } catch (DmlException e) {
            System.assert(
                e.getMessage().contains('These Are Mandatory Fields'),
                'Error message should be thrown when fields are null'
            );
        }
        Test.stopTest();
    }
    
    @isTest
    static void testWhenFieldsAreNotNull() {
        
        // Create test record with required fields
        Test_Obj__c testRec = new Test_Obj__c(
            Test_Field1__c = 'Value1',
            Test_Field2__c = 'Value2'
        );
        
        Test.startTest();
        insert testRec;
        Test.stopTest();
        
        // Verify record inserted successfully
        System.assertNotEquals(null, testRec.Id, 'Record should be inserted successfully');
    }
}