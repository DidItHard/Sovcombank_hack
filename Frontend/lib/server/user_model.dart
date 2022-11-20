import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    required this.username,
    this.firstName,
    this.lastName,
    required this.age,
    this.createdAt,
    this.updatedAt,
    this.notifications,
  });

  int? id;
  String username;
  String? firstName;
  String? lastName;
  int age;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<dynamic>? notifications;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    username: json["username"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    age: json["age"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    notifications: List<dynamic>.from(json["notifications"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "first_name": firstName,
    "last_name": lastName,
    "age": age,
    "created_at": "0",
    "updated_at": "0",
    "notifications": "0",
  };
}

