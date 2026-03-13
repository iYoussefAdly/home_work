void main() {
  int price = 500;
  String priceStr = price.toString();
  print("$priceStr");
  print("priceStr legnth = ${priceStr.length}");
  String formattedPrice = priceStr.padLeft(4, "\$");
  print(formattedPrice);
  print("formattedPrice length = ${formattedPrice.length}");
}
