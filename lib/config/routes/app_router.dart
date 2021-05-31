import 'package:auto_route/annotations.dart';
import 'package:tutor_finder_frontend/pages/splash/splash.dart';
import 'package:tutor_finder_frontend/pages/welcome/welcome.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: WelcomePage),
  ],
)
class $AppRouter {}
