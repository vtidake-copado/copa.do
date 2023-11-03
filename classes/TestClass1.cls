@IsTest
public class TestClass1 {
    @IsTest
    static void testMethod1() {
        Integer result = ClassToBeTested.addNumbers(2, 3);
        System.assertEquals(5, result);
    }
}