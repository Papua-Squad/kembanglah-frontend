import 'package:http/http.dart';
import 'package:kembanglah/model/login_model.dart';
import 'dart:convert';
import 'package:kembanglah/model/user_model.dart';
import 'package:kembanglah/api/url_api.dart';

class ApiUser{
  static Future<UserModel> registUser({
    required String fullName,
    required String email,
    required String username,
    required String password,
    required String role,
  }) async {
  
    Response _response = await post(
      Uri.parse(ConstUrl.baseUrl + 'register'),
      body: <String, dynamic>{
        "fullName": fullName,
        "email": email,
        "username": username,
        "password": password,
        "role": role,
      },
    );
    if (_response.statusCode == 200) {
      final UserModel responseData = UserModel.fromJson(_response.body);
      return responseData;
    } else {
      throw Exception("Failed to Regist!");
    }
  }
}

class ApiLogin{
  Future<LoginModel> login({
    required String username,
    required String password,
    }) async {
    Response _response = await post(
      Uri.parse(ConstUrl.baseUrl + 'login'),
      body: <String, dynamic>{
        'username': username,
        'password': password,
      },
    );
    if (_response.statusCode == 200) {
      final jsonData = json.decode(_response.body);
      final LoginModel responseData = LoginModel.fromJson(jsonData);
      return responseData;
    } else {
      throw Exception("Failed to login!");
    }
  }
}
