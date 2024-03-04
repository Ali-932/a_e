import 'package:get/get.dart';

import '../../models/User.dart';
import '../../services/sign_in_service.dart';

class SignInController extends GetxController {
  static late UserModel myUser;
  static bool notinilizedUser=false;
  Future<void> signInUser(Map<String, dynamic> data) async {
    try {
      final user = await SignInRemote.sign_in(data);
      if (user != null) {
        myUser = user;
        notinilizedUser = true;
      }
    } catch (e) {
      // Log the error or handle it as needed
      print('Error during sign in: $e');
      // Optionally, rethrow the exception if you want calling functions to handle it
      // throw e;
    }
  }
}
