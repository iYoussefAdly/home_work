import 'shape.dart';

class Rectangle implements Shape {
  double _width = 0;
  double _height = 0;

  Rectangle(int i, int j);
  Rectan(double width, double height) {
    if (width > 0 && height > 0) {
      _width = width;
      _height = height;
    } else {
      print("Invalid Rectangle dimensions");
    }
  }

  @override
  double area() {
    return _width * _height;
  }
}
