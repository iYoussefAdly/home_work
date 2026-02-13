import 'car.dart';

void main() {
  Car firstCar = Car();
  Car secondCar = Car();
  firstCar.brand = "";
  firstCar.year = 1880;
  secondCar.brand = "Verna";
  secondCar.year = 1900;
  print("Car brand =${secondCar.brand}\nCar year =${secondCar.year}");
}
