@isTest
public class ApexCoverageServiceTest {
    @isTest static void testDoubleValue() {
        // Test input
        Integer testValue = 5;
        
        // Expected output
        Integer expectedValue = 10;
        
        // Method execution
        Integer result = ApexCoverageService.doubleValue(testValue);
        
        // Assert to check if the result is as expected
        System.assertEquals(expectedValue, result, 'The double value method did not return the expected result.');
    }
}