void main() {
  int number = 6;
  int factorial = 1;
  for (int i = number; i >= 1; i--) {
    factorial *= i;
    print("${number}*${i} +\n");
  }
  print(factorial);
}
