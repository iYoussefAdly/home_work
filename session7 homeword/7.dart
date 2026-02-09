import 'dart:io';

void main() {
  print("Enter a number:");
  String number = stdin.readLineSync()!;
  while (number.length > 1) {
    int sum = 0;
    for (int i = 0; i < number.length; i++) {
      sum += int.parse(number[i]);
    }
    number = sum.toString();
  }
  print(number);
}
