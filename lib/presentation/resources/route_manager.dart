import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_app/presentation/forgetpassword/forgetpassword.dart';
import 'package:mvvm_app/presentation/login/login.dart';
import 'package:mvvm_app/presentation/main/main.dart';
import 'package:mvvm_app/presentation/onboarding/onboarding.dart';
import 'package:mvvm_app/presentation/register/register.dart';
import 'package:mvvm_app/presentation/resources/string_manager.dart';
import 'package:mvvm_app/presentation/splash/splash.dart';
import 'package:mvvm_app/presentation/store_details/store_details.dart';

class Routes {
  static const String splash = '/';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgetPasswordRoute = '/forgetPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgetPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetails());
        break;
      default:
        return undefindRoute();
    }
  }

  static Route<dynamic> undefindRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppString.noRouteFound),
              ),
              body: Text(AppString.noRouteFound),
            ));
  }
}
