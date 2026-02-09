// Define the City class
class City {
  String name;
  int population;
  City({required this.name, required this.population });
  void displayDetails() {
    print("City: $name, Population: $population");
  }
}

void main() {
  // Create two city objects
  City city1 = City(name: "Cairo", population: 1000000);
  City city2 =City(name: "Alexandria", population: 10000);
  city1.displayDetails();
  city2.displayDetails();
}