import './product.dart';
import './item.dart';

class Cart {
  final Map<int, Item> _items = {};

  void addProduct(Product product) {
    final item = _items[product.id];
    if (item == null) {
      _items[product.id] = Item(product: product, quantity: 1);
    } else {
      _items[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  double total() => _items.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);

  @override
  String toString() {
    if (_items.isEmpty) {
      return '\n------\nCart is empty\n------\n';
    }
    final itemizedList =
        _items.values.map((item) => item.toString()).join('\n');
    return '\n------\n$itemizedList\nTotal: \$${total()}\n------\n';
  }

  bool get isEmpty => _items.isEmpty;
}