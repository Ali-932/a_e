import 'package:a_e/views/section/sections_view.dart';
import 'package:get/get.dart';

import '../utils/category/stores_view_utils.dart';
import '../views/home/home_view.dart';
import 'package:flutter/material.dart';

class NavbarController extends GetxController {
  var currentIndex = 0.obs;
  var currentScreen = Rx<Widget>(HomePage()); // Use Widget as the type for currentScreen

  void changeTabIndex(int index) {
    currentIndex.value = index;
    switch (index) {
      case 0:
        currentScreen.value =  HomePage();
        break;
      case 2:
        currentScreen.value = SectionsPage();

        break;

    }
  }

  void goToNestedPage(Widget Page) {
    currentScreen.value = Page;
  }
}
