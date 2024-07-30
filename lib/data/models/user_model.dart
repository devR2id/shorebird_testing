part of 'models.dart';

class User {
  int? id;
  String firstName;
  String lastName;
  int age;

  User({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'age': age,
      };

  factory User.fromJson(Map<String, dynamic> map) => User(
        id: map['id'],
        firstName: map['firstName'],
        lastName: map['lastName'],
        age: map['age'],
      );
}
