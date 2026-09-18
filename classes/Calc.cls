public class Calc {
    public Integer add(Integer a, Integer b) {
        //Dev-1 changes Update UAE
        Integer result = a + b;
        System.debug('Dev#1 calculation');
        // Dev-1 changes ends

        // Dev-2 changes start UAE
        result = a + b; 
        System.debug('Dev#2 calculation');
        // Dev-2 changes end

        return result;
    }
}
