import 'dart:convert';
class LoginModel{
  LoginModel({
    required this.token,
    required this.username,
    required this.password,
  });

  String token;
  String username;
  String password;

  factory LoginModel.fromJson(String str) =>
      LoginModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginModel.fromMap(Map<String, dynamic> json) => LoginModel(
    token: json["token"],
    username: json["username"],
    password: json["user_email"],
  );

  Map<String, dynamic> toMap() => {
    "token": token,
    "username": username,
    "username": username,
  };
}