public class ExampleClass {
    public String firstVariable;
    public Integer secondVariable;
    public Boolean thirdVariable;
    public Double fourthVariable;
    public Date fifthVariable;

    
    public void setFirstVariable(String value) {
        firstVariable = value;
    }

    
    public void incrementSecondVariable() {
        secondVariable++;
    }

    
    public void toggleThirdVariable() {
        thirdVariable = !thirdVariable;
    }

    
    public void addValueToFourthVariable(Double value) {
        fourthVariable += value;
    }

    
    public void setFifthVariableToToday() {
        fifthVariable = Date.today();
    }
}