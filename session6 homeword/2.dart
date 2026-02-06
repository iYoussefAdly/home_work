// Define the Car class
class Car {
  String brand;
  int year;
  Car(this.brand, this.year);
  void displayDetails() {
    print("Car brand: $brand, Year: $year");
  }
}
void main() {
  Car car1 = Car("Toyota", 2020);
  Car car2 = Car("BMW", 2023);
  car1.displayDetails();
  car2.displayDetails();
}