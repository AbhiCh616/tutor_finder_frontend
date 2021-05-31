import 'package:auto_route/annotations.dart';
import 'package:tutor_finder_frontend/pages/splash/splash.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
  ],
)
class $AppRouter {}
