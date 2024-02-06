import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/navbar_controllers.dart';


class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NavbarController controller = Get.find<
        NavbarController>(); // Find the controller

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Obx(() =>
        controller.currentScreen
            .value), // Use currentScreen from the controller
      ),
      bottomNavigationBar: Obx(
            () =>
            BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              onTap: controller.changeTabIndex,
              backgroundColor: const Color(0xff4048FD),
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: const IconThemeData(
                  color: Colors.amber, size: 35),
              unselectedIconTheme: const IconThemeData(
                  color: Colors.white, size: 30),
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.white,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.bold),
              items: [
                BottomNavigationBarItem(
                  icon: _animatedIcon(
                      Icons.home, controller.currentIndex.value == 0),
                  label: 'رئيسيه',
                ),
                BottomNavigationBarItem(
                  icon: _animatedIcon(
                      Icons.shopping_cart, controller.currentIndex.value == 1),
                  label: 'عربه',
                ),
                BottomNavigationBarItem(
                  icon: _animatedIcon(Icons.filter_list_alt,
                      controller.currentIndex.value == 2),
                  label: 'اقسام',
                ),
                BottomNavigationBarItem(
                  icon: _animatedIcon(
                      Icons.person, controller.currentIndex.value == 3),
                  label: 'شخصي',
                ),
                BottomNavigationBarItem(
                  icon: _animatedIcon(Icons.location_on_sharp,
                      controller.currentIndex.value == 4),
                  label: 'موقع',
                ),
              ],
            ),
      ),
    );
  }}

  Widget _animatedIcon(IconData iconData, bool isSelected) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      child: Icon(
        iconData,
        color: isSelected ? Colors.amber : Colors.white,
        size: isSelected ? 35 : 30,
      ),
    );
  }

