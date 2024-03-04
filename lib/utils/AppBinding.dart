import 'package:get/get.dart';

import '../controllers/auth/sign_up_location_controller.dart';
import '../controllers/auth/user_controller.dart';
import '../controllers/navbar_controllers.dart';

class AppBinding implements Bindings{
  @override
  void dependencies(){
    Get.put<NavbarController>(NavbarController(), permanent: true);
    Get.put<SignUpController>(SignUpController(), permanent: true);
    Get.put<SignInController>(SignInController(), permanent: true);
  }
}