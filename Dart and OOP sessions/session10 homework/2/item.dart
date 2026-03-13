class Item {
  final String _name;
  final double _price;
  final String _category;
  Item({required String name, required double price, required String category})
      : _name = name,
        _price = price,
        _category = category;
  String get name => _name;
  double get price => _price;
  String get category => _category;
  @override
  String toString() {
    return "Name: $name, Price: $price, Category: $category";
  }
}
