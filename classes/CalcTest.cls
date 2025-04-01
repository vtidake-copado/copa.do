@isTest
public class CalcTest {
    
    @isTest
    static void testAddPositiveNumbers() {
        // Arrange
        Calc calc = new Calc();
        Integer a = 5;
        Integer b = 3;
        
        // Act
        Test.startTest();
        Integer result = calc.add(a, b);
        Test.stopTest();
        
        // Assert
        System.assertEquals(8, result, 'Addition of 5 + 3 should be 8');
    }
    
    @isTest
    static void testAddNegativeNumbers() {
        // Arrange
        Calc calc = new Calc();
        Integer a = -5;
        Integer b = -3;
        
        // Act
        Test.startTest();
        Integer result = calc.add(a, b);
        Test.stopTest();
        
        // Assert
        System.assertEquals(-8, result, 'Addition of -5 + -3 should be -8');
    }
    
    @isTest
    static void testAddZeroValues() {
        // Arrange
        Calc calc = new Calc();
        
        // Act & Assert
        Test.startTest();
        System.assertEquals(0, calc.add(0, 0), 'Addition of 0 + 0 should be 0');
        System.assertEquals(5, calc.add(5, 0), 'Addition of 5 + 0 should be 5');
        System.assertEquals(5, calc.add(0, 5), 'Addition of 0 + 5 should be 5');
        Test.stopTest();
    }
    
    @isTest
    static void testAddPositiveAndNegativeNumbers() {
        // Arrange
        Calc calc = new Calc();
        Integer a = 5;
        Integer b = -3;
        
        // Act
        Test.startTest();
        Integer result = calc.add(a, b);
        Test.stopTest();
        
        // Assert
        System.assertEquals(2, result, 'Addition of 5 + -3 should be 2');
    }
    
    @isTest
    static void testAddLargeNumbers() {
        // Arrange
        Calc calc = new Calc();
        Integer a = 2147483647; // Max Integer value
        Integer b = 1;
        
        // Act
        Test.startTest();
        try {
            Integer result = calc.add(a, b);
            System.assert(false, 'Should have thrown numeric overflow exception');
        } catch(Exception e) {
            // Assert
            System.assert(true, 'Expected exception for numeric overflow');
        }
        Test.stopTest();
    }
}