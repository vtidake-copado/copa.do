public class ExampleClass {
    // Public variables
    public String firstVariable;
    public Integer secondVariable;
    public Boolean thirdVariable;
    public Double fourthVariable;
    public Date fifthVariable;

    // Public method 1
    public void setFirstVariable(String value) {
        firstVariable = value;
    }

    // Public method 2
    public void incrementSecondVariable() {
        secondVariable++;
    }

    // Public method 3
    public void toggleThirdVariable() {
        thirdVariable = !thirdVariable;
    }

    // Public method 4
    public void addValueToFourthVariable(Double value) {
        fourthVariable += value;
    }

    // Public method 5
    public void setFifthVariableToToday() {
        fifthVariable = Date.today();
    }
}