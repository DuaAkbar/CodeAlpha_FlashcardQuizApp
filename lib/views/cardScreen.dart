import 'package:flashcardquiz/Controllers/flashCardController.dart';
import 'package:flashcardquiz/Model/FlashCardModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';

class Cardscreen extends StatefulWidget {
  final Flashcardmodel card;
  const Cardscreen({super.key, required this.card});

  @override
  State<Cardscreen> createState() => _CardscreenState();
}

class _CardscreenState extends State<Cardscreen> {
  FlashCardcontroller flashcardcontroller = Get.find();
  RxBool showAnswer = RxBool(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Card Screen",
          style: TextStyle(
           fontSize: 22,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                height: 350,
                width: 300,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            showAnswer.value
                                ? flashcardcontroller.currenCard.answer
                                : flashcardcontroller.currenCard.question,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      showAnswer.value
                          ? SizedBox.shrink()
                          : ElevatedButton(
                            onPressed: () {
                              showAnswer.value = !showAnswer.value;
                            },
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                            ),
                            child: Text(
                              'Show Answer',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  flashcardcontroller.prevCard();
                  showAnswer.value = false;
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  "Prev",
                  style: TextStyle(fontSize: 16.5, color: Colors.white),
                ),
              ),

              SizedBox(width: 150),

              ElevatedButton(
                onPressed: () {
                  flashcardcontroller.nextCard();
                  showAnswer.value = false;
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(100, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 16.5, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
