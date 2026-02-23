import 'item.dart';
import 'order.dart';

void main() {
  Item pizza = Item(name: "Margherita", price: 120, category: "Pizza");
  Item cola = Item(name: "Cola", price: 25, category: "Drinks");
  Order order = Order();
  order.addItem(pizza);
  order.addItem(cola);
  print(order.items);
  print("Total Price: ${order.calculateTotalPrice()}");
}
