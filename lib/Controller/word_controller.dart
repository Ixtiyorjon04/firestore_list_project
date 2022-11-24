import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_list_project/Model/word_model.dart';
import 'package:get/get.dart';

class WordController extends GetxController {
  var isLoading = false;
  var wordList = <WordModel>[];

  Future <void> getData() async {
    try {
      QuerySnapshot words = await FirebaseFirestore.instance.collection(
          'word_bank').orderBy('title').get();
      wordList.clear();
      for(var word in words.docs){
        wordList.add(WordModel(word['title'], word['meaning'], word.id));
      }
      isLoading = false;
    }catch(e){
      Get.snackbar('Error', '${e.toString()}');
    }
  }

}

