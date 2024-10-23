@isTest
public class TestMyClass1 {
    @isTest
    public static void testGetMessage() {
        MyClass1 myClass1 = new MyClass1();
        String message = myClass1.getMessage();
        System.assertEquals('Hello from MyClass1', message);
    }
}