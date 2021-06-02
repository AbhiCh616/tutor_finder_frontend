import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutor_finder_frontend/pages/welcome/auth_buttons.dart';
import 'package:tutor_finder_frontend/providers/auth_creds.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32),
              child: ChangeNotifierProvider<AuthCreds>(
                create: (_) => AuthCreds(),
                child: AuthButtons(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
