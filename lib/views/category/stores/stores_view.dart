
import 'package:a_e/views/category/stores/componet_store_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/navbar_controllers.dart';
import '../../../utils/category/stores_view_utils.dart';
class StoresPage extends StatelessWidget {
  StoresPage({Key? key}) : super(key: key);
  final NavbarController controller =
  Get.find<NavbarController>(); // Find the controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'متاجر',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF4048FD),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                controller.goToNestedPage( ComponetStore());
                },
              child: const Stores(
                name: "متجر دبدوب",
                imagePath: "assets/images/shop/img.png",
                price: "كلفه التوصيل 1000 د.ع",
                location: 'بغداد / الصليخ',
              ),
            ),
            const Stores(
              name: "متجر دبدوب",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 1000 د.ع",
              location: 'بغداد / الصليخ',
            ),

            const SizedBox(height: 20),
            const Stores(
              name: "متجر السعاده",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 3000 د.ع",
              location: 'بغداد / الاعظميه',
            ),
            const SizedBox(height: 20),
            const Stores(
              name: "متجرالغابه",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 1000 د.ع",
              location: 'بغداد /الشعله',
            ),
            const SizedBox(height: 20),
            const Stores(
              name: "متجر بيتنا",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 8000 د.ع",
              location: 'بغداد / الكراده',
            ),
            const SizedBox(height: 20),
            const Stores(
              name: "متجرقطتي",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 4000 د.ع",
              location: 'بغداد / الاعظميه',
            ),
            const SizedBox(height: 20),
          ],
        ),
      )

    );
  }
}
