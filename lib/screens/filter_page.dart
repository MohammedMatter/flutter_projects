// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:terhal_project/screens/payment_confirmation_screen.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isActivecolor = false;
  Color color = Colors.amber;
  int selectedIndexsize = 0;
  int selectedIndextransmission = 0;
  int selectedIndexcategory = 0;
  int selectedIndexcolor = 0;
  int selectedIndexcapacity = 0;
  List colors = [
    Colors.amber,
    const Color.fromARGB(255, 46, 44, 38),
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.cyan,
    Colors.deepOrange,
  ];
  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          'تصفية',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
          ),
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
          const Padding(
            padding: EdgeInsets.only(right: 15, top: 10),
            child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'حجم السيارة',
                  style: TextStyle(
                      color: Color(0xff0A4F65),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                3,
                (index) {
                  return InkWellStyle(
                    onTap: () {
                      setState(() {
                        selectedIndexsize = index;
                      });
                    },
                    isActivecolor: selectedIndexsize == index,
                    title: index == 0
                        ? 'صغيرة'
                        : index == 1
                            ? 'متوسطة'
                            : 'كبيرة',
                  );
                },
              )),
          const Padding(
            padding: EdgeInsets.only(right: 15, top: 10),
            child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'ناقل الحركة',
                  style: TextStyle(
                      color: Color(0xff0A4F65),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                2,
                (index) {
                  return InkWellStyle(
                      onTap: () {
                        setState(() {
                          selectedIndextransmission = index;
                        });
                      },
                      isActivecolor: selectedIndextransmission == index,
                      title: index == 0 ? 'عادي' : 'اوتوماتيك');
                },
              )),
          const Padding(
            padding: EdgeInsets.only(right: 15, top: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'الفئة',
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              4,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: OptionItem(
                    onTap: () {
                      setState(() {
                        selectedIndexcategory = index;
                      });
                    },
                    title: index == 0
                        ? 'رياضية'
                        : index == 1
                            ? 'عائلية'
                            : index == 2
                                ? 'اقتصادية'
                                : 'ميكانيكية',
                    isActivecolor: selectedIndexcategory == index),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child:
                Align(alignment: Alignment.centerRight, child: Text('اللون')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              7,
              (index) => ColorCircle(
                  color: colors[index],
                  onTap: () {
                    setState(() {
                      selectedIndexcolor = index;
                    });
                  },
                  isActivecolor: selectedIndexcolor == index),
            ),
          ),
          SizedBox(
            height: screenHight * 0.01,
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child:
                Align(alignment: Alignment.centerRight, child: Text('السعة')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              4,
              (index) => OptionItem(
                  onTap: () {
                    setState(() {
                      selectedIndexcapacity = index;
                    });
                  },
                  title: index == 0
                      ? '<2000 CC'
                      : index == 1
                          ? '2500 CC'
                          : index == 2
                              ? '3000 CC'
                              : '3500 cc',
                  isActivecolor: selectedIndexcapacity == index),
            ),
          ),
          SizedBox(
            height: screenHight * 0.05,
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
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>PaymentConfirmationScreen(),
                  ));
                },
                style: ButtonStyle(
                    minimumSize:
                        WidgetStatePropertyAll(Size(screenWidth * 0.8, 50)),
                    shape:
                        const WidgetStatePropertyAll(RoundedRectangleBorder()),
                    backgroundColor:
                        const WidgetStatePropertyAll(Color(0xff1FC4F6))),
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

class ColorCircle extends StatelessWidget {
  Color color;

  bool isActivecolor;
  final VoidCallback onTap;
  ColorCircle({
    super.key,
    required this.color,
    required this.isActivecolor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () => onTap(),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: color),
        ),
        child: CircleAvatar(
          maxRadius: 18,
          backgroundColor: Colors.white,
          child: CircleAvatar(
              maxRadius: 15,
              backgroundColor: color,
              child: isActivecolor
                  ? const Icon(
                      Icons.check,
                      color: Colors.white,
                    )
                  : const SizedBox.shrink()),
        ),
      ),
    );
  }
}

class OptionItem extends StatelessWidget {
  bool isActivecolor;
  String title;
  final VoidCallback onTap;
  OptionItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.isActivecolor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: Alignment.center,
        color:
            isActivecolor ? const Color(0xff333333) : const Color(0xffE4E4E4),
        height: 40,
        width: 80,
        child: Text(
          title,
          style: TextStyle(
              color: isActivecolor
                  ? const Color(0xffFFFFFF)
                  : const Color(0xff333333)),
        ),
      ),
    );
  }
}

class InkWellStyle extends StatelessWidget {
  bool isActivecolor;

  String title;
  final VoidCallback onTap;
  InkWellStyle({
    super.key,
    required this.isActivecolor,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: SizedBox(
        height: 80,
        width: 100,
        child: Card(
          margin: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(),
          color: isActivecolor
              ? const Color(0xff8DDEFE)
              : Theme.of(context).scaffoldBackgroundColor,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
