import 'package:flutter/material.dart';
import 'package:terhal_project/screens/splash_screen.dart';
import 'package:terhal_project/screens/welcome_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp(const Terhal());
}

class Terhal extends StatelessWidget {
  const Terhal({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splashIconSize: 600,
        splash:SplashScreen() , nextScreen:WelcomePage() ),
    );
  }
}
