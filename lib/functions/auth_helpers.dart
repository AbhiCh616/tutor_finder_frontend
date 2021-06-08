import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tutor_finder_frontend/services/auth.dart';
import 'package:http/http.dart' as http;

Future<bool> userSignUp(String email, String password) async {
  var _isLoggedIn;

  final _flutterSecureStorage = FlutterSecureStorage();
  final _mySecureStorage = MySecureStorage(_flutterSecureStorage);
  var _client = http.Client();
  try {
    final _auth = Auth(_mySecureStorage, _client);
    await _auth.createAccount(email, password);
    _isLoggedIn = await _auth.isLoggedIn();
  } finally {
    _client.close();
  }

  return _isLoggedIn;
}
