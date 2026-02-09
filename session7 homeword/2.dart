// Define the Temperature class
class Temperature {
  double celsius;
  Temperature(this.celsius);
  double toFahrenheit() {
    return (celsius * 9 / 5) + 32;
  }
}

void main() {
  Temperature temp = Temperature(25.0);
  print("Temperature in Celsius: ${temp.celsius}");
  print("Temperature in Fahrenheit: ${temp.toFahrenheit()}");
}