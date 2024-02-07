import 'package:a_e/views/category/stores/stores_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controllers/navbar_controllers.dart';

import '../../../utils/category/componet_store_utils.dart';

class  ComponetStore extends StatelessWidget {
  ComponetStore({Key? key}) : super(key: key);
  final NavbarController controller =
  Get.find<NavbarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore( name: "متجر دبدوب",),
        backgroundColor: const Color(0xFF4048FD),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {
              controller.goToNestedPage( StoresPage());
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 12),
              child: Container(
                height: 168,
                width: 358,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child:
                    Image.asset("assets/images/shop/interface_image_shop.png"),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: const Color(0xffD9D9D9),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 31,
                    width: 97,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3),
                        topLeft: Radius.circular(3),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Color(0xff4048FD),
                    ),
                    child: const Center(
                      child: Text(
                        'كلفه التوصيل 1000',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 31,
                    width: 67,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(3),
                        topLeft: Radius.circular(3),
                        bottomRight: Radius.circular(15),
                      ),
                      color: Color(0xff777DFA),
                    ),
                    child: const Center(
                      child: Text(
                        '20-30 ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 115),
                  child: Text(
                    'بغداد/شارع المعارض',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ),
                const Icon(
                  Icons.location_on_rounded,
                  size: 25,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: const Color(0xffD9D9D9),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                'شائع',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff4048FD),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  SizedBox(height: 10),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),
                  SizedBox(width: 30),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),
                  SizedBox(width: 20),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  ),
                  SizedBox(width: 20),
                  CommonItem(
                    nameitem: "مسحوق القطط",
                    imagePath: 'assets/images/shop/comman _item_image.png',
                    priceitem: '20.000',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: const Color(0xffD9D9D9),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 280),
              child: Text(
                'اغذيه',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff4048FD),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
                CommonItem(
                  nameitem: "مسحوق القطط",
                  imagePath: 'assets/images/shop/comman _item_image.png',
                  priceitem: '20.000',
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Container(
                width: 470,
                height: 8,
                color: const Color(0xffD9D9D9),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 260),
              child: Text(
                'حيوانات',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xff4048FD),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CommonItem(
                  nameitem: "قط منقط",
                  imagePath: 'assets/images/shop/animals_image_item.png',
                  priceitem: '20.000',
                ),
                CommonItem(
                  nameitem: "قط هندي",
                  imagePath: 'assets/images/shop/animals_image_item.png',
                  priceitem: '20.000',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
