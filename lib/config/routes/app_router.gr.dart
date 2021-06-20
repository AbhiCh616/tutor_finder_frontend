// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:tutor_finder_frontend/pages/login/login.dart' as _i5;
import 'package:tutor_finder_frontend/pages/register_tutor/register_tutor.dart'
    as _i7;
import 'package:tutor_finder_frontend/pages/signup/signup.dart' as _i6;
import 'package:tutor_finder_frontend/pages/splash/splash.dart' as _i3;
import 'package:tutor_finder_frontend/pages/welcome/welcome.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    WelcomePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.WelcomePage();
        }),
    LoginPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.LoginPage();
        }),
    SignupPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.SignupPage();
        }),
    RegisterTutorRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.RegisterTutor();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i1.RouteConfig(WelcomePageRoute.name, path: '/welcome-page'),
        _i1.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i1.RouteConfig(SignupPageRoute.name, path: '/signup-page'),
        _i1.RouteConfig(RegisterTutorRoute.name, path: '/')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

class WelcomePageRoute extends _i1.PageRouteInfo {
  const WelcomePageRoute() : super(name, path: '/welcome-page');

  static const String name = 'WelcomePageRoute';
}

class LoginPageRoute extends _i1.PageRouteInfo {
  const LoginPageRoute() : super(name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

class SignupPageRoute extends _i1.PageRouteInfo {
  const SignupPageRoute() : super(name, path: '/signup-page');

  static const String name = 'SignupPageRoute';
}

class RegisterTutorRoute extends _i1.PageRouteInfo {
  const RegisterTutorRoute() : super(name, path: '/');

  static const String name = 'RegisterTutorRoute';
}
