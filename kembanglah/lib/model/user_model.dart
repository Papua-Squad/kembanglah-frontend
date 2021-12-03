
import 'package:meta/meta.dart';
import 'dart:convert';

class UserModel{
    UserModel({
        required this.fullName,
        required this.email,
        required this.username,
        required this.password,
        required this.role,
    });

    String fullName;
    String email;
    String username;
    String password;
    String role;

    factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        fullName: json["full_name"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        role: json["role"],
    );

    Map<String, dynamic> toMap() => {
        "full_name": fullName,
        "email": email,
        "username": username,
        "password": password,
        "role": role,
    };
}
