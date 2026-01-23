// ignore_for_file: dead_code
void main() {
  int price = 150;
  bool isStudent = true;
  bool hasCoupon = false;
  if (isStudent && hasCoupon) {
    price = (price * 0.5).toInt();
  } else if (isStudent) {
    price = (price * 0.8).toInt();
  } else if (hasCoupon) {
    price = (price * 0.9).toInt();
  } else if (price >= 150) {
    price = (price * 0.95).toInt();
  }
  print("Final price = $price");
}
