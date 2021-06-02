import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:tutor_finder_frontend/providers/auth_creds.dart';

class AuthForm extends StatelessWidget {
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
              initialValue: authCreds.password,
              onChanged: (password) => authCreds.setPassword(password),
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.password,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(AppLocalizations.of(context)!.logIn.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}
