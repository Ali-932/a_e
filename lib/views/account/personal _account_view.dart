import 'package:a_e/views/account/update_account_view.dart';
import 'package:flutter/material.dart';

import '../../utils/category/componet_store_utils.dart';
import 'package:get/get.dart';

import '../../../controllers/navbar_controllers.dart';
import '../home/home_view.dart';
import 'Notifications_account_view.dart';
import 'help/help_account_view.dart';
import 'locations_account_view.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavbarController controller = Get.find<NavbarController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const NameStore(
          name: "الحساب",
        ),
        backgroundColor: const Color(0xFF4048FD),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () { controller.goToNestedPage( HomePage());},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 30),
            child: Container(
              height: 400,
              width: 324,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(81.8),
                ),
                color: Color(0xffE9EAFC),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left:160),
                    child: Text(
                      'تفاصيل الحساب',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff5F5B5B),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.goToNestedPage(const LocationPage());
                    },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 205),
                          child: Text(
                            'العناوين',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff5F5B5B),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                          ),
                          child: Icon(
                            Icons.location_on_sharp,
                            size: 25,
                            color: Color(0xff4048FD),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.goToNestedPage(const HelpPage());
                    },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left:  200),
                          child: Text(
                            'المساعده',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff5F5B5B),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                          ),
                          child: Icon(
                            Icons.headset_rounded,
                            size: 25,
                            color: Color(0xff4048FD),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.goToNestedPage(const NotificationsPage());
                    },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 200),
                          child: Text(
                            'الاشعارات',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff5F5B5B),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                          ),
                          child: Icon(
                            Icons.nature_rounded,
                            size: 25,
                            color: Color(0xff4048FD),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.goToNestedPage(const UpdataAccount());
                    },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 30, left: 150),
                          child: Text(
                            'الملف الشخصي',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff5F5B5B),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.start,
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                          ),
                          child: Icon(
                            Icons.person,
                            size: 25,
                            color: Color(0xff4048FD),
                          ),
                        ),
                      ],
                    ),
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
