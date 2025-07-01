// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:terhal_project/screens/login_page.dart';
import 'package:terhal_project/screens/sign_in_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/image_welcome.png',
                    fit: BoxFit.fill,
                  )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'اهلا و سهلا بك في ترحال',
                      style: TextStyle(color: Colors.cyan, fontSize: 20),
                    ),
                    Column(
                      children: [
                        ElevatedButtonStyle(
                          color_title: Colors.black,
                          bgColorbuttonStyle:
                              Theme.of(context).scaffoldBackgroundColor,
                          title: 'تسجيل دخول',
                        ),
                        ElevatedButtonStyle(
                          color_title: Colors.white,
                          bgColorbuttonStyle: Color(0xff096492),
                          title: 'مسنخدم جديد',
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'تخطي',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.cyan,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 20,
              child: Image.asset(
                'assets/cloud1.png',
              )),
          Positioned(bottom: 0, child: Image.asset('assets/cloud2.png')),
          Positioned(
              bottom: 0,
              right: -20,
              child: Transform.rotate(
                  angle: 5,
                  child: Image.asset(
                    'assets/cloud1.png',
                  ))),
          Positioned(
              bottom: 0, right: -40, child: Image.asset('assets/cloud2.png')),
        ],
      ),
    );
  }
}

class ElevatedButtonStyle extends StatelessWidget {
  Color color_title;
  String? title;
  Color? bgColorbuttonStyle;
  ElevatedButtonStyle({
    Key? key,
    required this.color_title,
    required this.title,
    required this.bgColorbuttonStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 5,
              fixedSize: Size(MediaQuery.of(context).size.width * 0.95, 60),
              backgroundColor: bgColorbuttonStyle),
          onPressed: () {
            title == 'تسجيل دخول'
                ? Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  )
                : Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ));
          },
          child: Text(
            title!,
            style: TextStyle(color: color_title, fontSize: 24),
          )),
    );
  }
}
