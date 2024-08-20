import 'dart:async';

class AuthService {
  Future<bool> login(String username, String password) async {
    return username == "user" && password == "password";
  }
}
