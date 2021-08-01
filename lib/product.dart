class Product {
  const Product({required this.id, required this.name, required this.price});

  final int id;
  final String name;
  final double price;

  String get displayName => '($initial) $name: \$$price';
  String get initial => name.substring(0, 1);
}
