// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:terhal_project/screens/shopping_page.dart';
import 'package:terhal_project/screens/sign_in_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: screenHight,
        width: screenWidth,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: screenHight * 0.40,
              width: double.infinity,
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(50)),
                child: Image.asset(
                  'assets/imageBg.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: screenHight * 0.40,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(50)),
                  color:
                      const Color.fromARGB(255, 66, 134, 223).withOpacity(0.6),
                ),
                width: double.infinity,
              ),
            ),
            Positioned(
              top: (screenHight * 0.31),
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 3,
                        offset: const Offset(0, 3),
                        spreadRadius: 1,
                      )
                    ],
                    color: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  height: screenHight * 0.65,
                  width: screenWidth * 0.8,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 8, right: 10),
                    child: Column(
                      children: [
                        FieldContainer(
                          label: 'الاسم',
                          value: 'جيهان علي',
                        ),
                        FieldContainer(
                          label: 'كلمة المرور',
                          value: '*******',
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 8, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'تذكرني',
                                style: TextStyle(
                                    color: Color.fromARGB(214, 100, 100, 100)),
                              ),
                              const SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    check = !check;
                                  });
                                },
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: check
                                        ? Colors.white
                                        : Colors.transparent,
                                    border: Border.all(
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)
                                                .withOpacity(0.4),
                                        width: 1),
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                  child: check
                                      ? const Icon(Icons.check,
                                          color: Colors.green, size: 18)
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          height: screenHight * 0.08,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                left: 20,
                                right: 20,
                                child: Container(
                                  color: Colors.cyan.withOpacity(0.3),
                                  height: screenHight * 0.055,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>  const ShoppingPage(),
                                  ));},
                                style: ButtonStyle(
                                    minimumSize: WidgetStatePropertyAll(
                                        Size(screenWidth * 0.8, 50)),
                                    shape: const WidgetStatePropertyAll(
                                        RoundedRectangleBorder()),
                                    backgroundColor:
                                        const WidgetStatePropertyAll(
                                            Color(0xff1FC4F6))),
                                child: const Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            alignment: Alignment.centerRight,
                            child: const Text(
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 0.8),
                              'هل نسيت كلمة المرور ؟',
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'او تسجيل الدخول ب',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButtonStyle(
                              val: 'فيسبوك',
                              color: const WidgetStatePropertyAll(Colors.blue),
                            ),
                            ElevatedButtonStyle(
                                val: 'جوجل',
                                color:
                                    const WidgetStatePropertyAll(Colors.red)),
                          ],
                        ),
                         Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>  const SignInPage(),
                                  )), 
                                  child: const Text(
                                    'مستخدم جديد',
                                    style: TextStyle(
                                        color: Colors.cyan,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                               
                             
                                   const Text('ليس لديك حساب؟')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonStyle extends StatelessWidget {
  String val;
  WidgetStatePropertyAll<Color>? color;

  ElevatedButtonStyle({
    super.key,
    required this.color,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.3,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: const WidgetStatePropertyAll(5),
            shape: const WidgetStatePropertyAll(RoundedRectangleBorder()),
            backgroundColor: color),
        onPressed: () {},
        child: Text(val,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class FieldContainer extends StatelessWidget {
  String label;
  String value;
  FieldContainer({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 5),
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.cyan,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 7),
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2)
              ]),
          margin: const EdgeInsets.all(4),
          width: double.infinity,
          height: 40,
          child: Text(value),
        )
      ],
    );
  }
}
