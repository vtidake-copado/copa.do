@IsTest
private class TestCamera {
    @IsTest
    Static void clickPhotoTest() {
        // Call the clickPhoto method
        String result = Camera.clickPhoto();
        
        // Assert that the result is as expected
        System.assertEquals('Photo clicked!', result, 'The photo was not clicked successfully.');
    }
}