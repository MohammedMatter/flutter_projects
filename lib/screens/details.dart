// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:terhal_project/screens/filter_page.dart';

class Detalis extends StatelessWidget {
  String title_app_bar;
  String image_car;
  Detalis({
    super.key,
    required this.image_car,
    required this.title_app_bar,
  });

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          title_app_bar,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: screenHight * 0.22,
                  child: Image.asset(
                    'assets/Rectangle 3.png',
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                  width: double.infinity,
                  height: screenHight * 0.20,
                  child: Image.asset(
                    'assets/Rectangle 3 copy 2.png',
                    fit: BoxFit.fill,
                  )),
              SizedBox(
                  width: double.infinity,
                  height: screenHight * 0.19,
                  child: Image.asset(
                    'assets/Rectangle 3 copy.png',
                    fit: BoxFit.fill,
                  )),
            ],
          ),
          SizedBox(
            height: screenHight * 0.3,
            width: screenWidth * 0.8,
            child: Image.asset(
              image_car,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Text(
                  'ليوم ريال',
                  style: TextStyle(color: Color(0xff0A4F65), fontSize: 25),
                ),
              ),
              const Text(
                '/180 ',
                style: TextStyle(color: Color(0xff0A4F65), fontSize: 25),
              ),
            ],
          ),
          SizedBox(height: screenHight * 0.05),
          const Text(
            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Center(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xff8DDEFE),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  margin: const EdgeInsets.only(right: 5, top: 10, left: 5),
                  width: 90,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'نوع المحرك',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                      Text('اوتوماتيك '),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 5,
            height: 15,
          ),
          Stack(
            clipBehavior: Clip.none,
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
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => FilterPage(),));
                },
                style: ButtonStyle(
                    minimumSize:
                        WidgetStatePropertyAll(Size(screenWidth * 0.8, 50)),
                    shape:
                        const WidgetStatePropertyAll(RoundedRectangleBorder()),
                    backgroundColor:  WidgetStatePropertyAll(Color(0xff1FC4F6))),
                child: const Text(
                  'احجز الان',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
