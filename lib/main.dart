import 'package:flashcardquiz/Controllers/flashCardController.dart';
import 'package:flashcardquiz/views/Homescreen.dart';
import 'package:flashcardquiz/widget/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  Get.put(FlashCardcontroller());
  runApp(flashCardQuiz());
}

class flashCardQuiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: mytheme,
      home: Homescreen(),
    );
  }
}
