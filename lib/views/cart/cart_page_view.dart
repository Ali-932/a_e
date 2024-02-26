import 'package:a_e/utils/cart/cart_page_view_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/navbar_controllers.dart';
import '../../utils/category/componet_store_utils.dart';
import '../home/home_view.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller = Get.find<NavbarController>();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const NameStore(
            name: "عربتي",
          ),
          backgroundColor: const Color(0xFF4048FD),
          actions: [
            GestureDetector(
              onTap: () {
                controller.goToNestedPage(HomePage());
              },
              child: IconButton(
                icon: const Icon(Icons.arrow_forward_ios_outlined),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20),
              child: Container(
                  height:100,
                  width: 340,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color(0xFF4048FD),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/img_6.png",height: 50,width: 50,),

                        const CartItem(nameitem: 'قطط منقط', priceitem: '200,000'),
                        const CounterButton()
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 340,left: 20),
              child: Container(
                  height:100,
                  width: 340,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color(0xFF4048FD),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right:12 ,top: 10),
                    child: Text(
                      'المجموع الكلي',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,

                      ),
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                    ),
                  )),
            ),
          ],
        ));
  }
}



