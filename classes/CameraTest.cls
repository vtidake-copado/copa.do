@ IsTest
private class CameraTest {
    @ IsTest
    Static void focusTest() {
        String result = Camera.checkFocus();
        
        // Assert that the result is as expected
        System.assertEquals('Focus testing!', result, 'The photo was not clicked successfully.');
    }
}