import 'package:a_e/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/navbar_controllers.dart';
import '../../../utils/category/componet_store_utils.dart';
import '../../../utils/category/stores_view_utils.dart';
import 'componet_store_view.dart';

class StoresPage extends StatelessWidget {
  StoresPage({Key? key}) : super(key: key);

  final NavbarController controller = Get.find<NavbarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "متاجر",
        ),
        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            controller.goToNestedPage( HomePage());
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (BuildContext context, int index)
        {
          return Column(
            children: [
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  controller.goToNestedPage(ComponetStore());
                },
                child: const Stores(
                  name: "متجر دبدوب",
                  imagePath: "assets/images/shop/interface_stores_image.png",
                  price: "كلفه التوصيل 1000 د.ع",
                  location: 'بغداد / الصليخ',
                ),
              ),
              const Stores(
                name: "متجر دبدوب",
                imagePath: "assets/images/shop/interface_stores_image.png",
                price: "كلفه التوصيل 1000 د.ع",
                location: 'بغداد / الصليخ',
              ),
              const SizedBox(height: 10),

              const SizedBox(height: 10),
              const Stores(
                name: "متجرالغابه",
                imagePath: "assets/images/shop/interface_stores_image.png",
                price: "كلفه التوصيل 1000 د.ع",
                location: 'بغداد /الشعله',
              ),
              const SizedBox(height: 10),
              const Stores(
                name: "متجر بيتنا",
                imagePath: "assets/images/shop/interface_stores_image.png",
                price: "كلفه التوصيل 8000 د.ع",
                location: 'بغداد / الكراده',
              ),
              const SizedBox(height: 10),
              const Stores(
                name: "متجر بيتنا",
                imagePath: "assets/images/shop/interface_stores_image.png",
                price: "كلفه التوصيل 8000 د.ع",
                location: 'بغداد / الكراده',
              ),


            ],
          );
        },
      ),
    );
  }
}
