@isTest
private class HelloWorldTest {
    @isTest static void testSayHello() {
        String result = HelloWorld.sayHello('Salesforce');
        System.assertEquals('Hello1, Salesforce!', result);
    }
    
    @isTest static void testGetGreeting() {
        String result = HelloWorld.getGreeting();
        System.assertEquals('Hello, World!', result);
    }
}