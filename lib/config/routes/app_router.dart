import 'package:auto_route/annotations.dart';
import 'package:tutor_finder_frontend/pages/login/login.dart';
import 'package:tutor_finder_frontend/pages/register_tutor/register_tutor.dart';
import 'package:tutor_finder_frontend/pages/signup/signup.dart';
import 'package:tutor_finder_frontend/pages/splash/splash.dart';
import 'package:tutor_finder_frontend/pages/welcome/welcome.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    AutoRoute(page: WelcomePage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignupPage),
    AutoRoute(page: RegisterTutor, initial: true),
  ],
)
class $AppRouter {}
