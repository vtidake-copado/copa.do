@isTest
public class TestClass2 {
    @isTest
    static void testMethod2() {
        Integer result = ClassToBeTested.substractNumbers(5, 4);
        System.assertEquals(1, result);
    }
  
    @isTest
    static void testMethod3() {
        Integer result = ClassToBeTested.multiplyNumbers(6, 7);
        System.assertEquals(42, result);
    }
}