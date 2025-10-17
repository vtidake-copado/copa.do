@IsTest
public class kompal1Test {

    @IsTest
    static void testSayHelloWithName() {
        String result = kompal1.sayHello('Kompal');
        System.assertEquals('Hello, Kompal!', result, 'Should return a proper greeting with name');
    }
    
    @IsTest
    static void testSayHelloWithoutName() {
        String result = kompal1.sayHello('');
        System.assertEquals('Hello, Guest!', result, 'Should handle blank name properly');
    }
}