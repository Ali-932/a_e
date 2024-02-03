import 'package:flutter/material.dart';

import '../../utils/home/home_view_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 42.35,
                width: 305.87,
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.53),
                  color: const Color(0xffD4D4D4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'ابحث هنا',
                      style: TextStyle(fontSize: 16, color: Colors.black26),
                      textDirection: TextDirection.rtl,
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 42.35,
                      width: 41.41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.53),
                        color: const Color(0xff4048FD),
                      ),
                      child: const Icon(Icons.search, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                height: 116.7,
                width: 305.87,
                child: Image.asset("assets/images/image1.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'حيوانك الاليف',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5F5B5B),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    UpperTag(name: "قطط", imagePath: "assets/images/img_1.png"),
                    UpperTag(name: "كلاب", imagePath: "assets/images/img_2.png"),
                    UpperTag(name: "طيور", imagePath: "assets/images/img_3.png"),
                    UpperTag(name: "ارانب", imagePath: "assets/images/img_4.png"),
                    UpperTag(name: "سلحفاة", imagePath: "assets/images/img_5.png"),
                    UpperTag(name: "قطط", imagePath: "assets/images/img_6.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Category(name: 'متاجر', imagePath: 'assets/images/img.png',),
                  Category(name: 'عيادات', imagePath: 'assets/images/img_2.png',),
                  Category(name: 'خدمات منزلية', imagePath: 'assets/images/img_3.png',),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'شائع',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF5F5B5B),
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              const CommonItem(name: "متجر قطتي",imagePath: "assets/images/img_6.png",),
            ],
          ),
        ),
      ),
    );
  }
}

NavbarController() async {
  // TODO: implement NavbarController
  throw UnimplementedError();
}
