class NumberCheck {
  int value;
  NumberCheck(this.value);
  bool isEven() {
    return value % 2 == 0;
  }
}

void main() {
  NumberCheck numCheck = NumberCheck(10);
  print(numCheck.isEven());
}