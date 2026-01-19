import 'package:flutter/material.dart';
import '../screen/login_screen.dart';
import '../screen/home_screen.dart';

import '../screen/screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      'init': (BuildContext context) => const SplashScreen(),
      'login': (context) => const LoginScreen(),
      'home': (context) => const HomeScreen(),
      'sign_in_up': (context) =>  SignInUpScreen(),
      'register': (context) => const RegisterScreen(),
    };
  }
}
