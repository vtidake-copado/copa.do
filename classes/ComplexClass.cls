public class ComplexClass {
    public void complexMethod() {
        for (Integer i = 0; i < 10; i++) {
            if (i / 2 == 0) {
                // Nested if
                if (i > 5) {
                    // Another level of nesting
                    for (Integer j = 0; j < 10; j++) {
                        if (j < i) {
                            // Deeply nested structure
                            while (j < 5) {
                                j++;
                                if (j == 3) {
                                    // Breaking the flow
                                    break;
                                }
                            }
                        }
                    }
                } else {
                    // Parallel structure to the first if
                    if (i < 5) {
                        // Another level of nesting
                        for (Integer k = 0; k < 10; k++) {
                            if (k > i) {
                                // Deeply nested structure
                                do {
                                    k--;
                                } while (k > 5);
                            }
                        }
                    }
                }
            } else {
                // Parallel structure to the first for
                for (Integer m = 0; m < 10; m++) {
                    switch on m {
                        when 1 {
                            // ...
                        }
                        when 2 {
                            // ...
                        }
                        when 3 {
                            // ...
                        }
                        when 4 {
                            // ...
                        }
                        when else {
                            // ...
                        }
                    }
                }
            }
        }
    }
}