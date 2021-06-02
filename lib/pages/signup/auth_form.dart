import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:tutor_finder_frontend/providers/auth_creds.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  bool _isObscure = true;

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthCreds>(
      builder: (context, authCreds, child) => Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              initialValue: authCreds.email,
              onChanged: (email) => authCreds.setEmail(email),
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.email,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            TextFormField(
              obscureText: _isObscure,
              initialValue: authCreds.password,
              onChanged: (password) => authCreds.setPassword(password),
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.password,
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility),
                  onPressed: _toggleObscure,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(AppLocalizations.of(context)!.signUp.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}
