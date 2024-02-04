import 'package:a_e/views/home/stores_view.dart';
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
                child: Image.asset("assets/images/Interface_image_app.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10,left: 200),
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
                    UpperTag(name: "قطط", imagePath: "assets/images/UpperTag_image_cat.png"),
                    UpperTag(name: "كلاب", imagePath: "assets/images/UpperTag_image_dog.png"),
                    UpperTag(name: "طيور", imagePath: "assets/images/UpperTag_image_Hams.png"),
                    UpperTag(name: "ارانب", imagePath: "assets/images/UpperTag_image_Rabbit.png"),
                    UpperTag(name: "سلحفاة", imagePath: "assets/images/UpperTag_image_turtle.png"),

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the CategoryDetailPage when tapped
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Storespage(),
                      ),
                    );
                  },
                  child: Category(name: 'متاجر', imagePath: 'assets/images/Category_image_home.png'),
                ),

                  Category(name: 'عيادات', imagePath: 'assets/images/Category_image_clinics.png',),
                  Category(name: 'خدمات منزلية', imagePath: 'assets/images/Category_image_homeservice.png',),
                ],
              ),

              Padding(padding:  EdgeInsets.only(top: 10,left: 250),
              child:Text(
                'شائع',

                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF5F5B5B),
                    fontWeight: FontWeight.bold),
              ),),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Set the scroll direction to horizontal
                child: Row(
                   
                  children: [
                    const CommonItem(name: "متجر قطتي", imagePath: "assets/images/img_6.png",),
                    SizedBox(
                      width:20,
                    ),

                    const CommonItem(name: "متجر بند الصحة", imagePath: "assets/images/img_6.png",),
                    SizedBox(
                      width:20,
                    ),
                    const CommonItem(name: "متجر الحيوانات الأليف", imagePath: "assets/images/img_6.png",),
                    SizedBox(
                      width:20,
                    ),
                  ],
                ),
              ),




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
