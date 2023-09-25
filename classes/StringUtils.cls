public class StringUtils {
    public static String reverseString(String input) {
        String reversed = ''; //Commit it
        for (Integer i = input.length() - 1; i >= 0; i--) {
            reversed += input.charAt(i);
        }
        return reversed;
    }
}
