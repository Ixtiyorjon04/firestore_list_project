import 'package:firestore_list_project/Controller/word_controller.dart';
import 'package:get/get.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<WordController>(WordController());
  }
}