import 'package:a_e/views/account/help/help_account_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/navbar_controllers.dart';
class AdvicePage extends StatelessWidget {
  const AdvicePage({Key? key}) : super(key: key);

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
           child: Text('تفضل بمراجعة طلبك والتأكد من تحديد الموقع واختيار العناصر بعناية'
             'في حال واجهتك مشكلة أو استفسار، لا تتردد في الاتصال بمركز المساعدة لمساعدتك في حل المشكلة وتلبية طلبك بكفاءة.'
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
