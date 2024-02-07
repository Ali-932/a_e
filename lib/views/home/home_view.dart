import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/home/home_view_utils.dart';
import '../category/stores/stores_view.dart';

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
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: 'ابحث هنا',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.53),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color(0xffD4D4D4),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  suffixIcon: Container(
                    height: 42.35,
                    width: 41.41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.53),
                      color: Color(0xff4048FD),
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 12),
              Container(
                height: 116.7,
                width: 305.87,
                child: Image.asset("assets/images/Interface_image_app.jpg"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 200),
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
            const UpperTagRow(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => StoresPage());
                    },
                    child: const Category(
                      name: 'متاجر',
                      imagePath: 'assets/images/Category/Category_image_clinics.png',
                    ),
                  ),
                  const Category(
                    name: 'عيادات',
                    imagePath:
                        'assets/images/Category/Category_image_clinics.png',
                  ),
                  const Category(
                    name: 'خدمات منزلية',
                    imagePath:
                        'assets/images/Category/Category_image_homeservice.png',
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, left: 250),
                child: Text(
                  'شائع',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF5F5B5B),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // Set the scroll direction to horizontal
                child: Row(
                  children: [
                    const CommonItem(
                      name: "متجر قطتي",
                      imagePath: "assets/images/img_6.png",
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const CommonItem(
                      name: "متجر بند الصحة",
                      imagePath: "assets/images/img_6.png",
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const CommonItem(
                      name: "متجر الحيوانات الأليف",
                      imagePath: "assets/images/img_6.png",
                    ),
                    const SizedBox(
                      width: 20,
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

