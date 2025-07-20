import 'package:flashcardquiz/Controllers/flashCardController.dart';
import 'package:flashcardquiz/views/EditScreen.dart';
import 'package:flashcardquiz/views/addCardScreen.dart';
import 'package:flashcardquiz/views/cardScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  FlashCardcontroller flashcardcontroller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flashcards",
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: flashcardcontroller.flashcards.length,
          itemBuilder: (context, index) {
            final card = flashcardcontroller.flashcards[index];
            return Center(
              child: InkWell(
                onTap: () {
                  flashcardcontroller.currentIndex.value = index;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Cardscreen(card: card);
                      },
                    ),
                  );
                },
                child: Card(
                  color: Theme.of(context).colorScheme.secondary,
                  margin: EdgeInsets.all(12),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            card.question,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) =>
                                        Editscreen(index: index, card: card),
                              ),
                            );
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            flashcardcontroller.deleteCard(index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => Addcardscreen());
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Icon(Icons.add, size: 25),
      ),
    );
  }
}
