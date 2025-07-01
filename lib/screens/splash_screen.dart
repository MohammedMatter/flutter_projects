import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/image_splash_screen-removebg-preview.png',
              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
