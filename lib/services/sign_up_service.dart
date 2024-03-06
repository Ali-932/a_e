import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../models/User.dart';
import '../utils/networking/server_variable.dart';

class SignUpRemote {
  static var client = http.Client();
  static RxInt sc = 0.obs;
  static RxString ed = ''.obs;
  static RxBool isloading = false.obs;

  static Future<void> signUp(Map data) async {
    isloading.value = true;
    try {
      var response = await client.post(Uri.parse(Server.baseUrl + Server.signUP),
          headers: {'content-type': 'application/json; charset=utf-8'},
          body: json.encode(data));
      isloading.value = false;

      if (response.statusCode == 202) {
        sc.value = 202;
        var jsonString = response.body;
        return null;
      } else if (response.statusCode == 404) {
        sc.value = 404;
        ed.value = 'User is not registered';

      }
    } catch (e) {
      isloading.value = false;
      sc.value = -1;
      ed.value = 'An error occurred';

    }
  }
}
