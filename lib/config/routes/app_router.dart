import 'package:auto_route/annotations.dart';
import 'package:tutor_finder_frontend/pages/login/login.dart';
import 'package:tutor_finder_frontend/pages/signup/signup.dart';
import 'package:tutor_finder_frontend/pages/splash/splash.dart';
import 'package:tutor_finder_frontend/pages/tutor_register/tut_reg_basic.dart';
import 'package:tutor_finder_frontend/pages/welcome/welcome.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    AutoRoute(page: WelcomePage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: SignupPage),
    AutoRoute(page: BasicInfoTutorRegPage),
  ],
)
class $AppRouter {}
