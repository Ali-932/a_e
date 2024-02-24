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
              padding: const EdgeInsets.only(top: 20, left:40),
              child: Container(
                  height: 400,
                  width: 300,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color(0xFF4048FD),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          CounterButton(),
                          SizedBox(width: 15,),
                          Icon( Icons.batch_prediction_outlined,color:Colors.black87,),
                          SizedBox(width: 50,),
                          CommanCart(name: 'طعام قطط',),

                        ],

                      ),
                      Container(
                        height: 2,
                        width: 270,
                        color: Colors.white,
                      ),
                      Row(
                        children: const [
                          CounterButton(),
                          SizedBox(width: 15,),
                          Icon( Icons.batch_prediction_outlined,color:Colors.black87,),
                          SizedBox(width: 55,),
                          CommanCart(name: 'لحم طازج',),

                        ],

                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}



