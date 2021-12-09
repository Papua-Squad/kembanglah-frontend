import 'dart:convert';
class LoginModel{
  LoginModel({
    required this.code,
    required this.message,
    required this.data,
  });

  var code;
  var message;
  Data data;

  @override
  String toString() {
    return 'LoginModel{code: $code, message: $message, data: $data}';
  }
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
        code: json["username"],
        message: json["repository"],
        data: Data.fromJson(json["data"])
    );
  }
}
class Data{
   String token;
   Data({required this.token});
   @override
  String toString() {
    return 'Data{token: $token}';
  }
   factory Data.fromJson(Map<String, dynamic> json) {
     return Data(
         token: json["auth_token"]
     );
   }
}