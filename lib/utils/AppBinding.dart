import 'package:get/get.dart';

import '../controllers/auth/sign_up_location_controller.dart';
import '../controllers/navbar_controllers.dart';

class AppBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<NavbarController>(NavbarController());
    Get.put<SignUpController>(SignUpController());

  }
}