import 'package:a_e/views/account/help/help_account_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/navbar_controllers.dart';
class CorrectAccount extends StatelessWidget {
  const CorrectAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller =
    Get.find<NavbarController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        centerTitle: true,

        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () { controller.goToNestedPage( const HelpPage());},
        ),
      ),
      body:Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.all( 20),
            child: Text(' في حالة وجود مشكلة أو استفسار حول طلبك، يُرجى التواصل معنا عبر مركز الدعم الخاص بنا. سيقوم فريقنا ببذل قصارى جهده لحل المشكلة وضمان تلبية طلبك بأسرع وقت ممكن.'
              ,
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF4048FD),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
              textDirection: TextDirection.rtl,

            ),)

        ],
      ),
    );
  }
}
