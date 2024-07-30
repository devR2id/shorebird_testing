part of 'models.dart';

class Item {
  int? id;
  String name;
  double price;
  String size;

  Item({this.id, required this.name, required this.price, required this.size});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'size': size,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      size: map['size'],
    );
  }
}
