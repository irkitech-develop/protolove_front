import 'package:flutter/material.dart';
import 'package:protolove_front/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Login Screen'),
            ),
            PrimaryButton(
              text: 'Continuar',
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}