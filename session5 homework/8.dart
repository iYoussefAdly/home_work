import 'dart:io';

void main() {
  print("Enter a number");
  int number = int.parse(stdin.readLineSync()!);
  String digitsString = number.toString();
  List<String> digitsList = digitsString.split("");
  List<int> intDigitsList = [];
  int sum = 0;
  for (int i = 0; i < digitsList.length; i++) {
    int digit = int.parse(digitsList[i]);
    sum += digit;
    intDigitsList.add(digit);
  }
  intDigitsList.sort();
  int largestDigit = intDigitsList.last;
  print("Largest digit: $largestDigit");
  print("Sum of digits = $sum");
}