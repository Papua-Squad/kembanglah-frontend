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
   Profile profile;
   Data({required this.token,required this.profile});

   @override
  String toString() {
    return 'Data{token: $token, profile: $profile}';
  }

   factory Data.fromJson(Map<String, dynamic> json) {
     return Data(
         token: json["auth_token"],
         profile: Profile.fromJson(json["profile"]),
     );
   }
}
class Profile{
  String full_name;
  String email;
  String username;


  Profile(this.full_name, this.email, this.username);

  @override
  String toString() {
    return 'Profile{full_name: $full_name, email: $email, username: $username}';
  }
  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(json["full_name"], json["email"], json["username"]);
  }

}