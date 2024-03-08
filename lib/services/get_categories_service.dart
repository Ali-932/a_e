import 'dart:convert';
import 'package:a_e/models/category.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import '../models/User.dart';
import '../utils//networking/server_variable.dart';
class CategoriesRemote{
  static var client = http.Client();
  static RxInt sc=0.obs;
  static RxString ed=''.obs;
  static RxBool isloading=false.obs;
  static var model_list=[];
  static Future<List?> getCategories() async {
    isloading.value=true;
    var response = await client.get(Uri.parse(Server.baseUrl+Server.getCategories),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    );
    isloading.value=false;
    if(response.statusCode == 200){
      print(200);
      sc.value=200;
      var jsonString = response.body;
      print(jsonString);
      List<CategoryModel> modelList = (json.decode(jsonString) as List)
          .map((i) => CategoryModel.fromJson(i))
          .toList();
      print(modelList);
      return modelList;
    }
    else{
      sc.value=400;
      ed.value=(jsonDecode(response.body)['detail']);
    }
    return null;
  }
}