part of 'models.dart';

class UserItem {
  int? id;
  int userId;
  int itemId;
  int quantity;
  double total;

  UserItem({
    this.id,
    required this.userId,
    required this.itemId,
    required this.quantity,
    required this.total,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'itemId': itemId,
        'quantity': quantity,
        'total': total,
      };

  factory UserItem.fromJson(Map<String, dynamic> map) => UserItem(
        id: map['id'],
        userId: map['userId'],
        itemId: map['itemId'],
        quantity: map['quantity'],
        total: map['total'],
      );
}
