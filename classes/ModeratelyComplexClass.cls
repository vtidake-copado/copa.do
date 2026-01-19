public class ModeratelyComplexClass {
    // Method with some control flow statements and a nested structure
    public void performLogic(Integer input) {
        if (input != null) { // +1
            if (input > 0) { // +2 (nested)
                for (Integer i = 0; i < input; i++) { // +3 (nested)
                    if (i / 2 == 0) { // +4 (nested)
                        // Do something for even numbers
                    } else {
                        // Do something for odd numbers
                    }
                }
            } else if (input < -5) { // +2 (in sequence)
                // Do something for input less than -5
            } else {
                // Do something for other negative numbers
            }
        } else {
            // Handle null input
        }
    }
    
    // Another method with a switch statement
    public void switchExample(Integer input) {
        switch on input { // +1
            when 1 {
                // Handle case 1
            }
            when 2 {
                // Handle case 2
            }
            when else {
                // Handle all other cases
            }
        }
    }
}