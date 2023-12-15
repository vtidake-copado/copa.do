public class CodeScanExample {
    public String name;
    private Integer age;
    public CodeScanExample() {
        // Constructor with no code.
    }
    public void setName(String n, String a) {
        name = n;
    }
    public String getName() {
        return name;
    }
    public void setAge(Integer a, Integer b) {
        age = a;
    }
    public Boolean isAdult() {
        if (age >= 18) {
            return true;
        } else {
            return false;
        }
    }
    public void doSomething() {
      // test
    }
    public void toSomething() {
      // test
    }
}