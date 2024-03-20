@isTest
public class StringUtilsTest {
    @isTest
    public static void testReverseString() {
        String result = StringUtils.reverseString('Hello World');
        System.assertEquals('dlroW olleH', result, 'The reversed string should be "dlroW olleH"');
    }
}