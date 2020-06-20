import 'package:flutter/material.dart';
import 'package:shopme/presentation/bottom_nav/bottom_nav_index.dart';
import 'package:shopme/presentation/on_boarding/on_boarding_page.dart';
import 'package:shopme/presentation/splash/splash_page.dart';
import 'package:shopme/presentation/sign_in/sign_in_page.dart';
import 'package:shopme/presentation/sign_up/sign_up_page.dart';
import 'package:shopme/presentation/reset_password/reset_password_view.dart';
import 'package:shopme/presentation/reset_password/success_reset_password_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // Getting arguments passed in while calling Navigator.pushNamed
      case '/':
        return MaterialPageRoute(builder: (_) => SplashPage());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
      case '/signin':
        return MaterialPageRoute(builder: (_) => SignInPage());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/resetpassword':
        return MaterialPageRoute(builder: (_) => ResetPasswordPage());
      case '/successresetpassword':
        return MaterialPageRoute(builder: (_) => SuccessResetPasswordPage());
      case '/bottomnav':
        return MaterialPageRoute(builder: (_) => BottomNavIndex());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          body: Center(
            child: Text("ERROR 404 NOT FOUND"),
          ),
        );
      },
    );
  }
}

//? Note:
// example : Validation of correct data type
// if (args is String) {
//   return MaterialPageRoute(
//     builder: (_) => BottomNav(
//       // parsing data berdasarkan model
//       data: args
//     ),
//   );
// }
