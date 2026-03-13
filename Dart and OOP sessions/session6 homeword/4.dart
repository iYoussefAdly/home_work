// Define the Product class
class Product {
  String name;
  double price;
  Product(this.name, [this.price = 0]);
  void displayDetails() {
    print("Product name: $name, Price: $price");
  }
}

void main() {
  Product product1 = Product("Laptop", 1500);
  Product product2 = Product("Book");
  product1.displayDetails();
  product2.displayDetails();
}