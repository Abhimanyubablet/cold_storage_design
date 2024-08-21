import 'package:flutter/cupertino.dart';

import '../presentation/landing_page/landing_page.dart';
import '../presentation/login_screen/login_screen_page.dart';
import '../presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = '/';
  static const String landingPage = '/landingPage';
  static const String loginScreen = '/loginScreen';
  // static const String dashboard = '/dashboard';
  // static const String login_with_phone = '/login_with_phone';
  // static const String verifycode = '/verifycode';


  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.splashScreen: (context) => SplashScreen(),
      AppRoutes.landingPage: (context) => LandingPage(),
      AppRoutes.loginScreen: (context) => LoginScreen(),
      // AppRoutes.dashboard: (context) => DashBoard(),

    };
  }
}
