import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/navbar_controllers.dart';
import '../../utils/home/home_view_utils.dart';
import '../category/stores/stores_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final NavbarController controller =
    Get.find<NavbarController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(

            children: [
          Padding(padding: const EdgeInsets.only(top: 12),
            child:TextField(
              decoration: InputDecoration(
                hintText: 'ابحث هنا',
                hintStyle: const TextStyle(fontSize: 16, color: Colors.black26),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.53),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xffD4D4D4),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                suffixIcon: Container(
                  height: 42.35,
                  width: 41.41,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.53),
                    color: const Color(0xff4048FD),
                  ),
                  child: const Icon(Icons.search, color: Colors.white),
                ),
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
                padding: EdgeInsets.only(top: 20, left: 200,bottom: 7),
                child: Text(
                  'حيوانك الاليف',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff5F5B5B),
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                ),
              ),
            const UpperTagRow(),
              const SizedBox(
                height:20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.goToNestedPage(StoresPage());
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
                    name: 'خدمات منزليه',
                    imagePath:
                        'assets/images/Category/Category_image_homeservice.png',
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 250,bottom: 15),
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
                  children: const [
                    CommonItem(
                      name: "متجر قطتي",
                      imagePath: "assets/images/img_6.png",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CommonItem(
                      name: "متجر بند الصحة",
                      imagePath: "assets/images/img_6.png",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CommonItem(
                      name: "متجر الحيوانات الأليف",
                      imagePath: "assets/images/img_6.png",
                    ),
                    SizedBox(
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

