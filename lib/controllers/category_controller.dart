import 'package:a_e/models/category.dart';
import 'package:get/get.dart';

import '../../services/sign_in_service.dart';
import '../services/get_categories_service.dart';

class CategoriesController extends GetxController {
  late List? categories;

  @override
  void onInit() {
    super.onInit();
    // You can pass necessary data to getCategories if required
    getCategories({});
  }

  Future<void> getCategories(Map<String, dynamic> data) async {
    try {
      categories = await CategoriesRemote.getCategories();
      print(categories);
    } catch (e) {
      // Log the error or handle it as needed
      print('Error during sign in: $e');
      // Optionally, rethrow the exception if you want calling functions to handle it
      // throw e;
    }
  }
}
