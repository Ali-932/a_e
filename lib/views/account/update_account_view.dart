import 'package:a_e/utils/category/componet_store_utils.dart';
import 'package:a_e/views/account/personal%20_account_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/navbar_controllers.dart';
class UpdataAccount extends StatelessWidget {
  const UpdataAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller = Get.find<NavbarController>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "الملف الشخصي",
        ),
        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () { controller.goToNestedPage( PersonalPage());},
        ),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
