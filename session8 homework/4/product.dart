class Product {
  String _name = '';
  double _price = 0;
  set name(String value) {
    if (value.isEmpty) {
      print('Invalid name');
    } else {
      _name = value;
    }
  }
  String get name => _name;
  set price(double value) {
    if (value < 0) {
      print('Invalid price');
    } else {
      _price = value;
    }
  }
  double get price => _price;
  double get discountedPrice => _price * 0.9;
}

