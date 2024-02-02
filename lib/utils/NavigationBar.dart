import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/auth/home_view.dart';

class NavbarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changeTabIndex(int index) {
    currentIndex.value = index;

    switch (index) {
      case 0:
      // Navigate to Home Page
        Get.to(() => HomePage());
        break;
    // Add cases for other tabs if needed
      default:
        break;
    }
  }
}

class Navbar extends StatelessWidget {
  final NavbarController _controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    final tabs = [
      Center(
        child: Text("رئيسيه"),
      ),
      Center(
        child: Text("عربة"),
      ),
      Center(
        child: Text("اقسام"),
      ),
      Center(
        child: Text("شخصي"),
      ),
      Center(
        child: Text("موقع"),
      ),
    ];

    return Scaffold(
      body: Obx(() => tabs[_controller.currentIndex.value]),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _controller.currentIndex.value,
        onTap: _controller.changeTabIndex,
        backgroundColor: const Color(0xff4048FD),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white, size: 35),
            label: 'رئيسيه',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.white, size: 35),
            label: 'عربه',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_list_alt, color: Colors.white, size: 35),
            label: 'اقسام',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white, size: 35),
            label: 'شخصي',
            backgroundColor: const Color(0xff4048FD),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_sharp, color: Colors.white, size: 35),
            label: 'موقع',
            backgroundColor: const Color(0xff4048FD),
          ),
        ],
      ),
    );
  }
}
