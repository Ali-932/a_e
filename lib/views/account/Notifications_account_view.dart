import 'package:a_e/views/account/personal%20_account_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/navbar_controllers.dart';

import '../../utils/category/componet_store_utils.dart';
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller =
    Get.find<NavbarController>();
    return Scaffold(
      backgroundColor:Colors.white ,
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "الاشعارات",
        ),
        backgroundColor: const Color(0xFF4048FD),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () {
              controller.goToNestedPage(const PersonalPage ());
            },
          ),
        ],
      ),

body: Column(
  children: [
    Padding(
      padding: const EdgeInsets.only(top:20,left: 100 ),
      child:
      Container(
        height: 140,
        width: 500,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20),bottomLeft:
          Radius.circular(20),bottomRight: Radius.circular(81.8) ,),
          color: Color(0xffE9EAFC),

        ),
        child:
        Column(

          children: [


            Row(
              children: [
                const Padding(padding: EdgeInsets.only(top:10,left:40),
                  child: Text(
                    'افضل  العروض من متجر  التقئ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff5F5B5B),
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top:10,),child: Icon(
                  Icons.add_alert_rounded,
                  size: 25,
                  color: Color(0xff4048FD),
                ),),
              ],
            ),



          ],
        ),
      ),
    ),
  ],
),
    );
  }
}
