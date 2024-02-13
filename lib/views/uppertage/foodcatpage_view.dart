import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/navbar_controllers.dart';

import '../../utils/category/componet_store_utils.dart';
import '../../utils/uppertage/foodcatpage_view_utils.dart';
import 'catpage_view.dart';

class FoodcatPage extends StatelessWidget {
  const FoodcatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller = Get.find<NavbarController>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "طعام القطط",
        ),
        backgroundColor: const Color(0xFF4048FD),
        actions: [
          GestureDetector(
            onTap: () {
              controller.goToNestedPage(const CatPage());
            },
            child: IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: TextField(
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
          SizedBox(height: 20),
          Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemfoodCat(name: 'ريفلكس', imagePath: 'assets/images/Catpage/food_meal_image.jpg', price: '4.000 QI'),
                      ItemfoodCat(name: 'ريفلكس', imagePath: 'assets/images/Catpage/food_meal_image.jpg', price: '4.000 QI'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemfoodCat(name: 'ريفلكس', imagePath: 'assets/images/Catpage/food_meal_image.jpg', price: '4.000 QI'),
                      ItemfoodCat(name: 'ريفلكس', imagePath: 'assets/images/Catpage/food_meal_image.jpg', price: '4.000 QI'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemfoodCat(name: 'ريفلكس', imagePath: 'assets/images/Catpage/food_meal_image.jpg', price: '4.000 QI'),
                      ItemfoodCat(name: 'ريفلكس', imagePath: 'assets/images/Catpage/food_meal_image.jpg', price: '4.000 QI'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
