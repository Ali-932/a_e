import 'package:a_e/views/category/stores/componet_store_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/navbar_controllers.dart';
import '../../../utils/category/componet_store_utils.dart';

class ItemView extends StatelessWidget {
  ItemView({Key? key}) : super(key: key);
  final NavbarController controller = Get.find<NavbarController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "اسم المنتج..",
        ),
        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            controller.goToNestedPage(ComponetStore());
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, top: 10),
            child: Image.asset(
              "assets/images/shop/item_view.png",
              height: 250,
              width: 250,
            ),
          ),
    const Padding(
    padding: EdgeInsets.only(left:280, top: 10),
      child:Text(
      'عطر فان',
      style: TextStyle(
          fontSize: 20,
          color: Color(0xff5F5B5B),
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.start,

    ),),
          const Padding(
            padding: EdgeInsets.only(left:145, top: 5),child:Text(
            'علبه مضغوطه ب حجم 40 ml',
            style:TextStyle(
                fontSize:16,
                color: Color(0xff5F5B5B),
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.start,
            textDirection: TextDirection.rtl,
          ),),

          const SizedBox(height:100,),
    Padding(
    padding: EdgeInsets.only(left:35, ),
      child: Container(
        height:54,
        width: 304,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffE9EAFC),

        ),
        child:Center(
            child:Padding(padding: const EdgeInsets.only(top: 10,left: 100),
              child:  TextFormField(
                decoration: const InputDecoration(
                  labelText: 'اضافه الئ العربة ',
                  labelStyle: TextStyle(
                      color: Color(0xff4048FD),
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),),
            )


        )





    ),)




        ],
      ),
    );
  }
}
