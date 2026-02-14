import 'dart:io';

void main() {
  List<int> numbers = [];
  for (int i = 1; i <= 5; i++) {
    print("Enter a number:");
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int largest = numbers[0];
  int smallest = numbers[0];
  for (var number in numbers) {
    if (number > largest) {
      largest = number;
    }
    if (number < smallest) {
      smallest = number;
    }
  }
  print("Largest: $largest");
  print("Smallest: $smallest");
  print("Difference: ${largest - smallest}");
  int sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  double average = sum / numbers.length;
  print("Average: $average");
  print("Numbers above average:");
  for (var number in numbers) {
    if (number > average) {
      print(number);
    }
  }
  int evenCount = 0;
  int oddCount = 0;
  for (var number in numbers) {
    if (number % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }
  print("Even count: $evenCount");
  print("Odd count: $oddCount");
}