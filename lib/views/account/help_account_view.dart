import 'package:a_e/views/account/personal%20_account_view.dart';
import 'package:flutter/material.dart';

import '../../utils/category/componet_store_utils.dart';
import 'package:get/get.dart';

import '../../../controllers/navbar_controllers.dart';
class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller =
    Get.find<NavbarController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "مساعده",
        ),
        backgroundColor: const Color(0xFF4048FD),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_outlined),
            onPressed: () { controller.goToNestedPage( PersonalPage());},
          ),


        ],
      ),
      body:Column(
        children: [
          Column(children: [
            const Padding(padding: EdgeInsets.only(top:50,left: 100),
              child: Text(
                'بماذا تحتاج المساعدة ؟',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff5F5B5B),
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
            ),
            Image.asset('assets/images/account/interface_help_account.png')
          ],
          ),

          Padding(
            padding: const EdgeInsets.only( top:100,left: 3,bottom: 70),
            child: Container(
              width: 288,
              height:2,
              color: const Color(0xffD9D9D9),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.only(top:10,),child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 25,
                color: Color(0xff4048FD),
              ),),
              Padding(padding: EdgeInsets.only(top:10),
                child: Text(
                  'مشكلة في الطلب ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4048FD),
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                ),
              ),




            ],
          ),
          Padding(
            padding: const EdgeInsets.only( top:100,left: 3,bottom: 70),
            child: Container(
              width: 288,
              height:2,
              color: const Color(0xffD9D9D9),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Padding(
                padding: EdgeInsets.only(top:10,),child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 25,
                color: Color(0xff4048FD),
              ),),
              Padding(padding: EdgeInsets.only(top:10),
                child: Text(
                  'مشكلة في الحساب او طريقه الطلب',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4048FD),
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.rtl,
                ),
              ),




            ],
          ),


        ],
      )
    );
  }
}
