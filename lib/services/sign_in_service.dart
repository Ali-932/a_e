import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../models/User.dart';
import '../utils//networking/server_variable.dart';
class SignInRemote{
  static var client = http.Client();
  static RxInt sc=0.obs;
  static RxString ed=''.obs;
  static RxBool isloading=false.obs;
  static Future<UserModel?> sign_in(Map data) async {
    isloading.value=true;
    var response = await client.post(Uri.parse(Server.baseUrl+Server.signIn),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body:json.encode(data),
    );
    isloading.value=false;
    if(response.statusCode == 200){
      sc.value=200;
      var jsonString = response.body;
      return UserModel.fromJson(jsonString);
    }
    else if (response.statusCode==404){
      sc.value=404;
      ed.value='User is not registered';
    }
    else{
      sc.value=403;
      ed.value=(jsonDecode(response.body)['detail']);
    }

  }
}