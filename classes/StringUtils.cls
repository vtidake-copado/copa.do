public class StringUtils {
    public static String reverseString(String input) {
        String reversed = ''; //variable goes here !!
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.charAt(i);
        }
        return reversed;
    }
}