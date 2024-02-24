import 'package:a_e/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/navbar_controllers.dart';
import '../../utils/category/componet_store_utils.dart';
import '../../utils/uppertage/catpage_view_utils.dart';
import 'foodcatpage_view.dart';

class CatPage extends StatelessWidget {
  const CatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller =
    Get.find<NavbarController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "القطط",
        ),
        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () { controller.goToNestedPage( HomePage());},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                GestureDetector(
                  onTap: () {
                    controller.goToNestedPage(FoodcatPage());
                  },
                  child: ItemCat(
                    name: "طعام",
                    imagePath: 'assets/images/Catpage/food_image_cat.png',
                  ),
                ),

                ItemCat(
                  name: "التنظيف",
                  imagePath: 'assets/images/Catpage/food_image_cat.png',
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ItemCat(
                  name: "اوعيه الطعام",
                  imagePath: 'assets/images/Catpage/pleas_image_cat.png',
                ),
                ItemCat(
                  name: "مستلزمات",
                  imagePath: 'assets/images/Catpage/vaccine_image_cat.png',
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ItemCat(
                  name: "اقفاص",
                  imagePath: 'assets/images/Catpage/home_image_cat.png',
                ),
                ItemCat(
                  name: "العاب",
                  imagePath: 'assets/images/Catpage/animal-toy.png',
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                ItemCat(
                  name: "صحه ",
                  imagePath: 'assets/images/Catpage/clinic_image_cat.png',
                ),
                ItemCat(
                  name: "منظفات",
                  imagePath: 'assets/images/Catpage/cleaning-image_products.png',
                )
              ],
            ),
            const SizedBox(height: 15),



          ],
        ),
      ),
    );
  }
}
