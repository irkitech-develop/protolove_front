import 'package:flutter/material.dart';

import '../screen/screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      'init': (BuildContext context) => const SplashScreen(),
    };
  }
}
