// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:terhal_project/data/list_car.dart';
import 'package:terhal_project/screens/details.dart';

// ignore: must_be_immutable
class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  int current_index = 0;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: screenHight * 0.1,
        child: BottomNavigationBar(
            showUnselectedLabels: true,
            selectedItemColor: Colors.cyan,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            selectedLabelStyle: const TextStyle(
                color: Colors.cyan, fontSize: 20, fontWeight: FontWeight.bold),
            currentIndex: current_index,
            onTap: (value) {
              setState(() {
                current_index = value;
              });
            },
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(Icons.explore), label: 'استكشاف'),
              BottomNavigationBarItem(
                  icon: Icon(MdiIcons.briefcase), label: 'رحلالتي'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'بحث'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'حسابي'),
            ]),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'السعودية /الرياض',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: list_car.length,
        itemBuilder: (context, index) => Column(
          children: [
            index == count
                ? Stack(
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
                  )
                : const SizedBox.shrink(),
            SizedBox(
              height: 300,
              child: Image.asset(
                list_car[index].imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 2),
                      blurRadius: 2,
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                    ),
                  ]),
              height: screenHight * 0.2,
              width: screenWidth * 0.91,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          list_car[index].name,
                          style: const TextStyle(
                            color: Color(0xFF0A4F65),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          list_car[index].type,
                          style: const TextStyle(
                            color: Color(0xFF0A4F65),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  specifications_car(
                    colorIconprop1: Colors.blue[300]!,
                    colorIconprop2: const Color.fromARGB(255, 30, 53, 11),
                    iconProp1: MdiIcons.snowflake,
                    iconProp2: MdiIcons.fuel,
                    colorLabel: const Color(0xFF0A4F65),
                    index: index,
                    prop1: list_car[index].hasAirConditioning
                        ? 'تكييف هواء '
                        : 'لا تكييف',
                    prop2: list_car[index].fuelType,
                  ),
                  specifications_car(
                    colorIconprop1: const Color.fromARGB(255, 47, 47, 48),
                    colorIconprop2: const Color.fromARGB(255, 44, 44, 44),
                    iconProp1: MdiIcons.carDoor,
                    iconProp2: MdiIcons.briefcase,
                    colorLabel: const Color(0xFF0A4F65),
                    index: index,
                    prop1: 'ابواب ${list_car[index].doors}',
                    prop2: 'حقيبة كبيرة${list_car[index].largeBags}',
                  ),
                  specifications_car(
                    colorIconprop1: Colors.black,
                    colorIconprop2: Colors.black,
                    iconProp1: MdiIcons.carShiftPattern,
                    iconProp2: MdiIcons.carSeat,
                    colorLabel: const Color(0xFF0A4F65),
                    index: index,
                    prop1: list_car[index].isManual ? 'يدوي' : 'اوتتوماتيك',
                    prop2: 'مقاعد ${list_car[index].seats}',
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                        height: 35,
                        child: ElevatedButton(
                            style: const ButtonStyle(
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder()),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.cyan)),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detalis(
                                  title_app_bar: list_car[index].name,
                                  image_car: list_car[index].imageUrl,
                                ),
                              ));
                            },
                            child: const Text('احجز الان'))),
                  )
                ],
              ),
            ),
            index == list_car.length - 1
                ? Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.all(15),
                          alignment: Alignment.topRight,
                          child: const Text(
                            'انواع اخرى',
                            style: TextStyle(
                                color: Color(0xff0A4F65),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/car4.png'),
                                          fit: BoxFit.fill)),
                                  margin:
                                      const EdgeInsets.only(right: 15, top: 15),
                                  height: 70,
                                  width: 150,
                                ),
                              ),
                              const Text(
                                'سيارة رياضية',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              ),
                              const Text(
                                '728 ITEM',
                                style: TextStyle(color: Color(0xff333333)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class specifications_car extends StatelessWidget {
  String prop1;
  String prop2;
  int index;
  IconData iconProp1;
  IconData iconProp2;
  Color colorIconprop1;
  Color colorIconprop2;
  Color colorLabel;
  specifications_car({
    super.key,
    required this.prop1,
    required this.prop2,
    required this.index,
    required this.iconProp1,
    required this.iconProp2,
    required this.colorIconprop1,
    required this.colorIconprop2,
    required this.colorLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                prop1,
                style: TextStyle(color: colorLabel, fontSize: 20),
              ),
              Icon(
                iconProp1,
                color: colorIconprop1,
              )
            ],
          ),
          Row(
            children: [
              Text(prop2, style: TextStyle(color: colorLabel, fontSize: 20)),
              Icon(
                iconProp2,
                color: colorIconprop2,
              )
            ],
          )
        ],
      ),
    );
  }
}
