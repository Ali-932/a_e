import 'package:a_e/views/section/sections_view.dart';
import 'package:get/get.dart';

import '../views/category/stores/stores_view.dart';
import '../views/home/home_view.dart';
import 'package:flutter/material.dart';

class NavbarController extends GetxController {
  var currentIndex = 0.obs;
  var currentScreen = Rx<Widget>(HomePage()); // Use Widget as the type for currentScreen

  void changeTabIndex(int index) {
    currentIndex.value = index;
    switch (index) {
      case 0:
        currentScreen.value = HomePage();
        break;
      case 2:
        currentScreen.value = SectionsPage();
        break;
      case 3:
        currentScreen.value = StoresPage();

        break;
    }
  }

  void goToNestedPage(Widget Page) {
    currentScreen.value = Page;
  }
}
