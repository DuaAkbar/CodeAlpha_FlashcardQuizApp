import 'package:flashcardquiz/Controllers/flashCardController.dart';
import 'package:flashcardquiz/Model/FlashCardModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Addcardscreen extends StatefulWidget {
  const Addcardscreen({super.key});

  @override
  State<Addcardscreen> createState() => _AddcardscreenState();
}

class _AddcardscreenState extends State<Addcardscreen> {
  TextEditingController questioncontroller = TextEditingController();
  TextEditingController answercontroller = TextEditingController();
  FlashCardcontroller flashcardcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Flashcards",
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: TextField(
              controller: questioncontroller,
              decoration: InputDecoration(
                label: Text(
                  "Question",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 16),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: TextField(
              controller: answercontroller,
              decoration: InputDecoration(
                label: Text(
                  "Answer",
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String question = questioncontroller.text.trim();
          String answer = answercontroller.text.trim();

          if (question.isNotEmpty && answer.isNotEmpty) {
            flashcardcontroller.addCard(
              Flashcardmodel(question: question, answer: answer),
            );
            Get.back();
          } else {
            Get.snackbar("Error", "Please enter both Question and Answer");
          }
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.check, size: 25),
      ),
    );
  }
}
