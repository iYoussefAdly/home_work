void main() {
  Person person1 = Person("Youssef", 22);
  person1.displayDetails();
  person1.age = 25;
  person1.displayDetails();
}
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void displayDetails() {
    print("Name: $name, Age: $age");
  }
}
