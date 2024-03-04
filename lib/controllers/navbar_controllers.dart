import 'package:a_e/views/section/sections_view.dart';
import 'package:get/get.dart';
import '../views/account/personal _account_view.dart';
import '../views/home/home_view.dart';
import 'package:flutter/material.dart';

import '../views/shoprush/car_shop_view.dart';

class NavbarController extends GetxController {
  var currentIndex = 0.obs;
  var currentScreen = Rx<Widget>(HomePage());

  void changeTabIndex(int index) {
    currentIndex.value = index;
    switch (index) {
      case 0:
        currentScreen.value =  HomePage();
        break;
      case 2:
        currentScreen.value = SectionsPage();
        break;
      case 3:
        currentScreen.value = const PersonalPage();
        break;
      case 4:
        break;

    }
  }

  void goToNestedPage(Widget Page) {
    currentScreen.value = Page;
  }
}
