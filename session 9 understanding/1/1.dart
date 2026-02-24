abstract class Vehicle {
  String _brand;
  String _model;
  double _fuelCapacity;
  double _fuelPerKm;

  Vehicle(this._brand, this._model, this._fuelCapacity, this._fuelPerKm) {
    if (_fuelCapacity <= 0) {
      print("Invalid fuel capacity");
      _fuelCapacity = 0;
    }
    if (_fuelPerKm <= 0) {
      print("Invalid fuel per km");
      _fuelPerKm = 0;
    }
  }
  String get name => "$_brand $_model";
  double fuelNeeded(double distance) {
    return distance * _fuelPerKm;
  }

  bool canComplete(double distance) {
    return fuelNeeded(distance) <= _fuelCapacity;
  }
}

class Car extends Vehicle {
  int _cargo;

  Car(String brand, String model, double fuelCap, double fuelPerKm, this._cargo)
      : super(brand, model, fuelCap, fuelPerKm);

  @override
  double fuelNeeded(double distance) {
    double base = super.fuelNeeded(distance);
    if (_cargo > 5) {
      return base * 1.1;
    }
    return base;
  }
}
class Bus extends Vehicle {
  int _passengers;

  Bus(String brand, String model, double fuelCap, double fuelPerKm, this._passengers)
      : super(brand, model, fuelCap, fuelPerKm);

  @override
  double fuelNeeded(double distance) {
    double base = super.fuelNeeded(distance);
    if (_passengers > 30) {
      return base * 1.2;
    }
    return base;
  }
}
void main() {
  List<Vehicle> vehicles = [
    Car("Toyota", "Corolla", 50, 0.07, 3),
    Car("BMW", "X5", 60, 0.09, 7),
    Bus("Mercedes", "Sprinter", 120, 0.2, 40),
  ];
  double totalDistance = 100 + 150 + 200; 
  for (var v in vehicles) {
    double fuel = v.fuelNeeded(totalDistance);
    print("\nVehicle: ${v.name}");
    print("Distance: $totalDistance km");
    print("Fuel needed: ${fuel.toStringAsFixed(2)} L");
    print(v.canComplete(totalDistance) ? "Can complete" : "Cannot complete");
  }
}
