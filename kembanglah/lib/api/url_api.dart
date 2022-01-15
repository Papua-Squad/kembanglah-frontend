class ConstUrl {
  static const String baseUrl = 'http://159.223.82.24:3000/';
  static String _loginToken = '';

  String get token => _loginToken;
  void setToken(token) {
    _loginToken = token;
  }
}
