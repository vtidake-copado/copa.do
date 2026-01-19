@isTest
public class CalculatorTest {
    @isTest
    static void testAdd() {
        Integer result = Calculator.add(2, 3);
        System.assertEquals(5, result, 'Addition result is incorrect');
    }
}