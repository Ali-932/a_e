import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController {
  final TextEditingController name_controller = TextEditingController();
  final TextEditingController address_controller = TextEditingController();
  final TextEditingController email_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();
  final TextEditingController phone_controller = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  RxBool isloading = false.obs;

  @override
  void onInit() {
    locationController.text = 'بغداد';
    super.onInit();
  }

  @override
  void onClose() {
    name_controller.dispose();
    address_controller.dispose();
    email_controller.dispose();
    password_controller.dispose();
    phone_controller.dispose();
    super.onClose();
  }
}