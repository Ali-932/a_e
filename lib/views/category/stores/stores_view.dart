import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/navbar_controllers.dart';
import '../../../utils/category/stores_view_utils.dart';
import 'componet_store_view.dart';

class StoresPage extends StatelessWidget {
  StoresPage({Key? key}) : super(key: key);

  final NavbarController controller = Get.find<NavbarController>();

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
      body: ListView.builder(
        itemCount: 6, // Update this number as per your actual item count
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  controller.goToNestedPage(ComponetStore());
                },
                child: Stores(
                  name: "متجر دبدوب",
                  imagePath: "assets/images/shop/img.png",
                  price: "كلفه التوصيل 1000 د.ع",
                  location: 'بغداد / الصليخ',
                ),
              ),
              Stores(
                name: "متجر دبدوب",
                imagePath: "assets/images/shop/img.png",
                price: "كلفه التوصيل 1000 د.ع",
                location: 'بغداد / الصليخ',
              ),
              SizedBox(height: 20),
              Stores(
                name: "متجر السعاده",
                imagePath: "assets/images/shop/img.png",
                price: "كلفه التوصيل 3000 د.ع",
                location: 'بغداد / الاعظميه',
              ),
              SizedBox(height: 20),
              Stores(
                name: "متجرالغابه",
                imagePath: "assets/images/shop/img.png",
                price: "كلفه التوصيل 1000 د.ع",
                location: 'بغداد /الشعله',
              ),
              SizedBox(height: 20),
              Stores(
                name: "متجر بيتنا",
                imagePath: "assets/images/shop/img.png",
                price: "كلفه التوصيل 8000 د.ع",
                location: 'بغداد / الكراده',
              ),
              SizedBox(height: 20),
              Stores(
                name: "متجرقطتي",
                imagePath: "assets/images/shop/img.png",
                price: "كلفه التوصيل 4000 د.ع",
                location: 'بغداد / الاعظميه',
              ),
              SizedBox(height: 20),
            ],
          );
        },
      ),
    );
  }
}
