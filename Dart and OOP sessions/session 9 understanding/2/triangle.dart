import 'shape.dart';

class Triangle implements Shape {
  double _base = 1;
  double _height = 1;
  Triangle(double base, double height) {
    if (base > 0 && height > 0) {
      _base = base;
      _height = height;
    } else {
      print("Invalid Triangle dimensions");
    }
  }

  @override
  double area() {
    return 0.5 * _base * _height;
  }
}
