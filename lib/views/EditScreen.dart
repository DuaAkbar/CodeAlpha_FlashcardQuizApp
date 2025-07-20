import 'package:flashcardquiz/Controllers/flashCardController.dart';
import 'package:flashcardquiz/Model/FlashCardModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Editscreen extends StatefulWidget {
  final int index;
  final Flashcardmodel card;
  Editscreen({super.key, required this.index, required this.card});

  @override
  State<Editscreen> createState() => _EditscreenState();
}

class _EditscreenState extends State<Editscreen> {
  TextEditingController questioncontroller = TextEditingController();

  TextEditingController answercontroller = TextEditingController();

  FlashCardcontroller flashcardcontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    questioncontroller.text = widget.card.question;
    answercontroller.text = widget.card.answer;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Flashcards",
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
          flashcardcontroller.editCard(
            widget.index,
            Flashcardmodel(
              question: questioncontroller.text,
              answer: answercontroller.text,
            ),
          );
          Get.back();
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.check, size: 25),
      ),
    );
  }
}
