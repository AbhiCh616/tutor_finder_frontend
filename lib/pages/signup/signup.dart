import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tutor_finder_frontend/config/routes/app_router.gr.dart';
import 'package:tutor_finder_frontend/pages/signup/progress.dart';
import '../signUp/auth_form.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool showProgressIndicator = false;

  changeProgressStatus() {
    setState(() {
      showProgressIndicator = !showProgressIndicator;
    });
  }

  goToNextScreen() {
    AutoRouter.of(context).popUntil((route) => false);
    AutoRouter.of(context).push(RegisterTutorRoute());
  }

  @override
  Widget build(BuildContext context) {
    return showProgressIndicator
        ? ProgressPage()
        : Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.signUp),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AuthForm(changeProgressStatus, goToNextScreen),
                ),
              ],
            ),
          );
  }
}
