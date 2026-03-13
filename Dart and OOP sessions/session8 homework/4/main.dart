import 'product.dart';

void main() {
  Product product = Product();
  product.price = -50;
  product.name = 'Laptop';
  product.price = 1000;
  print('Product: ${product.name}');
  print('Original Price: ${product.price}');
  print('Discounted Price: ${product.discountedPrice}');
}