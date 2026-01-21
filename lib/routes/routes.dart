import 'package:flutter/material.dart';
import '../screens/auth/login_screen.dart';
import '../screens/home/home_screen.dart';

import '../screens/screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      'init': (BuildContext context) => const SplashScreen(),
      'login': (context) => const LoginScreen(),
      'home': (context) => const HomeScreen(),
      'sign_in_up': (context) => SignInUpScreen(),
      'register': (context) => const RegisterScreen(),
    };
  }
}
