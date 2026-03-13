import 'circle.dart';
import 'rectangle.dart';
import 'shape.dart';
import 'triangle.dart';

double calculateCost(double totalArea) {
  double cost = 0;
  if (totalArea <= 50) {
    cost = totalArea * 1.50;
  } else if (totalArea <= 150) {
    cost = (50 * 1.50) + ((totalArea - 50) * 1.25);
  } else {
    cost = (50 * 1.50) + (100 * 1.25) + ((totalArea - 150) * 1.00);
  }
  return cost;
}
void main() {
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(4),
    Triangle(6, 8),
  ];
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area();
  }
  double totalCost = calculateCost(totalArea);
  print("Total Area: ${totalArea}");
  print("Total Cost: ${totalCost}");
}
