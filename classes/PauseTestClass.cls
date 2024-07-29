// Apex class that will pause for 5 minutes
public class PauseTestClass {
    public static void pause() {
        Long startTime = System.currentTimeMillis();
        while (System.currentTimeMillis() - startTime < 5 * 60 * 1000) {
            // Wait for 5 minutes
        }
    }
}