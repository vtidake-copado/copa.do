public class kompal1 {
// Simple method that returns a greeting
    public static String sayHello(String name) {
        if (String.isBlank(name)) {
            return 'Hello, Guest!';
        }
        return 'Hello, ' + name + '!';
    }
}