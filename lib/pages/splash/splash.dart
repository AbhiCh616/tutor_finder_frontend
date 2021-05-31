import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:tutor_finder_frontend/config/routes/app_router.gr.dart';
import 'package:tutor_finder_frontend/services/auth.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    openNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future openNextScreen() async {
    bool _isLoggedIn;
    final flutterSecureStorage = FlutterSecureStorage();
    final secureStorage = MySecureStorage(flutterSecureStorage);
    final client = http.Client();
    try {
      final auth = Auth(secureStorage, client);
      _isLoggedIn = await auth.isLoggedIn();
    } finally {
      client.close();
    }

    if (_isLoggedIn) {
      context.router.push(WelcomePageRoute());
    }
  }
}
