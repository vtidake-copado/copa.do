@isTest
public class MyClassTest {
    @isTest
    static void testAddNumbers() {
        MyClass myClass = new MyClass();
        Integer result = myClass.addNumbers(2, 3);
        System.assertEquals(5, result, 'The sum of 2 and 3 should be 5');
    }
}