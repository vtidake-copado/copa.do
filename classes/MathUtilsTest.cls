@isTest
public class MathUtilsTest {
    @isTest
    public static void testAddNumbers() {
        Integer result = MathUtils.addNumbers(2, 3);
        System.assertEquals(5, result, 'The addition of 2 and 3 should be 5');
    }
}