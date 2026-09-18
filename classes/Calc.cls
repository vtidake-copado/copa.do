public class Calc {
    public Integer add(Integer a, Integer b) {
        //Dev-1 changes #1
        Integer result = a + b;
        System.debug('Dev-1 calculation');
        // Dev-1 changes ends

        // Dev-2 changes start #2
        result = a + b;
        System.debug('Dev-2 calculation');
        // Dev-2 changes end

        return result;
    }
}
