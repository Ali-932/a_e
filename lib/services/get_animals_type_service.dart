import 'dart:convert';
import 'package:a_e/models/animaltype.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import '../utils/networking/server_variable.dart';

class AnimalTypeRemote {
  static var client = http.Client();
  static RxInt sc = RxInt(0);
  static RxString ed = RxString('');
  static RxBool isLoading = RxBool(false);
  static var modelList = <dynamic>[];

  static Future<List?> getAnimalTypes() async {
    isLoading.value = true;
    try {
      var response = await client.get(
        Uri.parse(Server.baseUrl + Server.getAnimalTypes),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
      );
      isLoading.value = false;

      if (response.statusCode == 200) {
        sc.value = 200;
        var jsonString = response.body;
        print(jsonString); 
        // Handle errors in JSON decoding
        try {
          List<AnimalModel> modelList = (json.decode(jsonString) as List)
              .map((i) => AnimalModel.fromJson(i))
              .toList();
          print(modelList);
          return modelList;
        } catch (e) {
          print('Error decoding JSON: $e');
          sc.value = 500;
          ed.value = 'Internal server error';
          return null;
        }
      } else {
        sc.value = 400;
        ed.value = jsonDecode(response.body)['detail'];
      }
    } catch (e) {
      print('Error fetching animal types: $e');
      sc.value = 500;
      ed.value = 'Internal server error';
    }
    return null;
  }
}
