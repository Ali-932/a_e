import 'package:a_e/views/category/shopes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/category/category_view_utils.dart';
import '../../utils/home/home_view_utils.dart';


class Storespage extends StatelessWidget {
  const Storespage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar:
        AppBar(
          centerTitle: true,
          title: Text(
            'الاقسام',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color(0xFF4048FD),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_forward_ios_outlined),

              onPressed: () {

              },
            ),
          ],

        ),
        backgroundColor: Colors.white,
        body:Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25,left: 250),
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
            Center(
              child: Column(
                children: [
                Row(

                  children: [
                    GestureDetector(
                      onTap: () {

                        Get.to(() => shopspage());
                      },
                      child: BoxItem(name:"متاجر"),
                    ),


                    BoxItem(name:"عيادات"),


                  ],
                ),
                Row(
                  children: [
                    BoxItem(name:"عروض"),
                    BoxItem(name:"خدمات منزليه"),

                  ],
                ),

                  Row(
                    children: [
                      BoxItem(name:"منظمات"),


                    ],
                  ),
              ],

              ),
            ),
          ],
        )
    );
  }
}
