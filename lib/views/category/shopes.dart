
import 'package:a_e/views/category/componet_shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/category/shop_view_utils.dart';
class shopspage extends StatelessWidget {
  const shopspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'متاجر',
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
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {

                Get.to(() => ItemShop());
              },
              child: ShopPage(
                name: "متجر دبدوب",
                imagePath: "assets/images/shop/img.png",
                price: "كلفه التوصيل 1000 د.ع",
                location: 'بغداد / الصليخ',
              ),
            ),
            ShopPage(
              name: "متجر دبدوب",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 1000 د.ع",
              location: 'بغداد / الصليخ',
            ),

            SizedBox(height: 20),
            ShopPage(
              name: "متجر السعاده",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 3000 د.ع",
              location: 'بغداد / الاعظميه',
            ),
            SizedBox(height: 20),
            ShopPage(
              name: "متجرالغابه",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 1000 د.ع",
              location: 'بغداد /الشعله',
            ),
            SizedBox(height: 20),
            ShopPage(
              name: "متجر بيتنا",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 8000 د.ع",
              location: 'بغداد / الكراده',
            ),
            SizedBox(height: 20),
            ShopPage(
              name: "متجرقطتي",
              imagePath: "assets/images/shop/img.png",
              price: "كلفه التوصيل 4000 د.ع",
              location: 'بغداد / الاعظميه',
            ),
            SizedBox(height: 20),
          ],
        ),
      )

    );
  }
}
