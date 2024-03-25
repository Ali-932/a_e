import 'package:a_e/models/animaltype.dart';
import 'package:a_e/services/get_animals_type_service.dart';
import 'package:get/get.dart';

class AnimalstypeController extends GetxController {
  List<AnimalModel>? animalTypes;

  @override
  void onInit() {
    super.onInit();
    // You can pass necessary data to getCategories if required
    getAnimalTypes({});
  }

  Future<void> getAnimalTypes(Map<String, dynamic> data) async {
    try {
      animalTypes = (await AnimalTypeRemote.getAnimalTypes())?.cast<AnimalModel>();
      print(animalTypes);
    } catch (e) {
      // Log the error or handle it as needed
      print('Error getting animal types: $e');
      // Optionally, rethrow the exception if you want calling functions to handle it
      // throw e;
    }
  }
}
