import 'dart:io';

void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);
  List<int> oddNumbers = [];
  for (int i = 1; i <=n; i++) {
    if (!(i % 2 == 0)) oddNumbers.add(i);
  }
  print(oddNumbers);
  print(oddNumbers.length);
}
