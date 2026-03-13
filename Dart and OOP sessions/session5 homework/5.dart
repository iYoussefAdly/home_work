import 'dart:io';

void main() {
  print("Enter a number");
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    print("$i*$number=${i * number}");
    sum += i * number;
  }
  print(sum);
}
