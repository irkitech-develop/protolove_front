import 'package:flutter/material.dart';
import 'package:protolove_front/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Protolove Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routes: AppRoutes.getRoutes(),
      initialRoute: 'init',
      debugShowCheckedModeBanner: false,
    );
  }
}
