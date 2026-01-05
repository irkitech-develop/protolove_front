import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/services.dart';
import 'package:protolove_front/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  static const colorizeColors = [Colors.white, Colors.black];

  static const colorizeTextStyle = TextStyle(fontSize: 50);

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(milliseconds: 3500), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => const LoginScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Protolove',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
              speed: const Duration(milliseconds: 300),
            ),
          ],
          isRepeatingAnimation: false,
        ),
      ),
    );
  }
}
