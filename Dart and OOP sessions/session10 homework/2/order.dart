import 'item.dart';

class Order {
  final List<Item> _orderItems = [];
  void addItem(Item item) {
    _orderItems.add(item);
  }
  List<Item> get items => List.unmodifiable(_orderItems);
  double calculateTotalPrice() {
    double total = 0;
    for (var item in _orderItems) {
      total += item.price;
    }
    return total;
  }
}