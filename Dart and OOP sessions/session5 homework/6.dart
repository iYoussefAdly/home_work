import 'dart:io';

void main() {
  int number = 14;
  for (int i = 1; i <= 3; i++) {
    print("Guess the number between 1 and 20");
    int userNumber = int.parse(stdin.readLineSync()!);
    if (userNumber == number) {
      print("correct");
      break;
    } else {
    i!=3?print("false try again"):print("OOps you're failed4");
    }
  }
}
