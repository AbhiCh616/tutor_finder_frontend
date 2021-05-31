import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tutor_finder_frontend/config/routes/app_router.gr.dart';

class AuthButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () => AutoRouter.of(context).push(SignupPageRoute()),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text('Sign up'),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () => AutoRouter.of(context).push(LoginPageRoute()),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: const Text('Log in'),
          ),
        ),
      ],
    );
  }
}