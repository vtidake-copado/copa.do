public class MathUtil {
    // Dev2 1
    public static Integer add(Integer a, Integer b) {
        return a + b;
    }
    // Dev2 2
    public static Integer multiply(Integer a, Integer b) {
        return a * b;
    }
    // Dev2 3
    public static Boolean isEven(Integer n) {
        return Math.mod(n, 2) == 0;
    }
    // US-0633180 test 1
    public static Integer subtract(Integer a, Integer b) {
        return a - b;
    }
}