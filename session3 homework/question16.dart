void main() {
  int a = 1, b = 2, c = 3;
  print("a > b: ${a > b}");
  print("a < b: ${a < b}");
  print("a == c: ${a == c}");
  print("b >= c: ${b >= c}");
  bool rulePassed = (a > b) && (a > c);
  if (rulePassed) {
    print("Rule passed");
  } else {
    print("Rule failed");
  }
}
