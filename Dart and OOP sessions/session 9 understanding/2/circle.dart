import 'dart:math';

import 'shape.dart';

class Circle implements Shape {
  double _radius = 1;
  Circle(double radius) {
    if (radius > 0) {
      _radius = radius;
    } else {
      print("Invalid Circle radius");
    }
  }

  @override
  double area() {
    return pi * _radius * _radius;
  }
}
