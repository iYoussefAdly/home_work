import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 1; i <= 5; i++) {
    print("Enter number $i:");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  numbers.sort();
  int smallest = numbers.first;
  int largest = numbers.last;
  int difference = largest - smallest;
  print(smallest);
  print(largest);
  print(difference);
}