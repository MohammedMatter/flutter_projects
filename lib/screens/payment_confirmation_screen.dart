import 'package:flutter/material.dart';
import 'package:terhal_project/screens/shopping_page.dart';

class PaymentConfirmationScreen extends StatelessWidget {
  const PaymentConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 4),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                maxRadius: 80,
                child: const Icon(
                  Icons.check,
                  color: Colors.green,
                  size: 80,
                ),
              ),
            ),
          ),
          const Text(
            '!تم الدفع بنجاح',
            style: TextStyle(
                color: Color(0xff0E9CF9),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'شكرا لك على شراء التذكرة',
            style: TextStyle(
                color: Color(0xff0E9CF9),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ShoppingPage(),
              ));
            },
            style: ButtonStyle(
                foregroundColor: const WidgetStatePropertyAll(Colors.white),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
                backgroundColor:
                    const WidgetStatePropertyAll(Color(0xff0EC7FF)),
                minimumSize: WidgetStatePropertyAll(
                    Size(screenWidth * 0.9, screenHight * 0.07))),
            child: const Text(
              'الحجز مرة اخرى',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
