class Employee {
  String name;
  int salary;
  Employee(this.name, this.salary);
  void giveRaise(int amount) {
    salary += amount;
  }
}

void main() {
  Employee emp = Employee("Youssef", 5000);
  emp.giveRaise(1000);
  print("New salary of ${emp.name}: ${emp.salary}");
}