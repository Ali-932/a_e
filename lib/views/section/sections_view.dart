import 'package:a_e/views/category/stores/stores_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/navbar_controllers.dart';
import '../../utils/category/sections_view._utils.dart';
import '../../utils/home/home_view_utils.dart';

class SectionsPage extends StatelessWidget {
  final NavbarController controller =
      Get.find<NavbarController>(); // Find the controller
  SectionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'الاقسام',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFF4048FD),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 250),
              child: Text(
                'حيوانك الاليف',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff5F5B5B),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
                textDirection: TextDirection.rtl,
              ),
            ),
            const UpperTagRow(),
            Center(
              child: Column(
                children: [
                  Wrap(
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.goToNestedPage(StoresPage());
                        },
                        child: const BoxItem(name: "متاجر"),
                      ),
                      const BoxItem(name: "عيادات"),
                      const BoxItem(name: "عروض"),
                      const BoxItem(name: "خدمات منزلية"),
                      const BoxItem(name: "منظمات"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
