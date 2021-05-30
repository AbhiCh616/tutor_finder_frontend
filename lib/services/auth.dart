import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:tutor_finder_frontend/constants/api_path.dart' as APIConstants;

class Auth {
  Auth(this._storage);
  final ISecureStorage _storage;
  var headers = {'Content-Type': 'application/json'};

  Future<bool> isLoggedIn() async {
    final isLoggedIn = await _storage.hasToken();
    return isLoggedIn;
  }

  logOut() {
    _storage.deleteToken();
  }

  Future<bool> createAccount(String email, String password) async {
    var body = jsonEncode({'email': email, 'password': password});
    var response = await http.post(Uri.parse(APIConstants.CREATE_USER_URL),
        headers: headers, body: body);

    if (response.statusCode == 201) {
      var jsonResponse = jsonDecode(response.body);
      var token = jsonResponse['token'];
      _storage.saveToken(token);
      return true;
    }
    return false;
  }

  Future<bool> logIn(String email, String password) async {
    var body = jsonEncode({'username': email, 'password': password});
    var response = await http.post(Uri.parse(APIConstants.LOGIN_USER_URL),
        headers: headers, body: body);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      var token = jsonResponse['token'];
      _storage.saveToken(token);
      return true;
    }
    return false;
  }
}

abstract class ISecureStorage {
  Future<void> saveToken(String token);
  Future<bool> hasToken();
  Future<void> deleteToken();
}

class MySecureStorage implements ISecureStorage {
  MySecureStorage(this._storage);
  final FlutterSecureStorage _storage;

  @override
  Future<void> saveToken(String token) =>
      _storage.write(key: 'token', value: token);

  @override
  Future<bool> hasToken() async {
    final hasToken = await _storage.containsKey(key: 'token');
    return hasToken;
  }

  @override
  Future<void> deleteToken() => _storage.delete(key: 'token');
}
