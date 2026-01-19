@isTest
public class MultiplierTest {
    // Test method to verify multiplication of two positive numbers
    @isTest static void testMultiplyPositiveNumbers() {
        Integer a = 5;
        Integer b = 4;
        Integer result = Multiplier.multiply(a, b);
        System.assertEquals(20, result, 'The multiplication should return 20');
    }

    // Test method to verify multiplication of a positive and a negative number
    @isTest static void testMultiplyNegativeNumber() {
        Integer a = -3;
        Integer b = 6;
        Integer result = Multiplier.multiply(a, b);
        System.assertEquals(-18, result, 'The multiplication should return -18');
    }

    // Test method to verify multiplication with zero
    @isTest static void testMultiplyWithZero() {
        Integer a = 0;
        Integer b = 5;
        Integer result = Multiplier.multiply(a, b);
        System.assertEquals(0, result, 'The multiplication with zero should return 0');
    }
}