// Define the Calculator class
void main() {
  Calculator calc = Calculator(10, 20);
  calc.addNumbers();
}
class Calculator {
  int num1;
  int num2;
  Calculator(this.num1, this.num2);
  void addNumbers() {
    print("The sum is: ${num1 + num2}");
  }
}