@isTest
private class HelloWorldTest {
    @isTest static void testSayHello() {
        String result = HelloWorld.sayHello('Salesforce');
        System.assertEquals('Hello, Salesforce!', result);
    }
}