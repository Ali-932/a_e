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
      appBar:
      AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "مساعده",
        ),
        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () { controller.goToNestedPage( const PersonalPage());},
        ),
      ),

        body:Column(
        children: [
          Row(
            children: [
            const Padding(padding: EdgeInsets.only(top:8,left:30 ),
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
              Image.asset("assets/images/account/interface_help_account.png",height: 200,width: 200,)

          ],
          ),


        ],
      )
    );
  }
}
