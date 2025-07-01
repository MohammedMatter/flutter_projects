import 'package:flutter/material.dart';
import 'package:terhal_project/screens/welcome_page.dart';

void main() {
  runApp(const Terhal());
}

class Terhal extends StatelessWidget {
  const Terhal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
