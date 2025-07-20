import 'package:flashcardquiz/Model/FlashCardModel.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

  class FlashCardcontroller extends GetxController {
    var flashcards = <Flashcardmodel>[].obs;
    var storage = GetStorage();
    RxInt currentIndex = 0.obs;

    Flashcardmodel get currenCard => flashcards[currentIndex.value];

    @override
    void onInit() {
      super.onInit();
      loadCards();
    }

    void loadCards() {
      List storedcards = storage.read('cards') ?? [];
      flashcards.value =
          storedcards.map((e) => Flashcardmodel.fromJson(e)).toList();
    }

    void saveCard() {
      storage.write('cards', flashcards.map((e) => e.toJson()).toList());
    }

    void addCard(Flashcardmodel card) {
      flashcards.add(card);
      saveCard();
    }

    void editCard(int index, Flashcardmodel newCard) {
      flashcards[index] = newCard;
      saveCard();
    }

    void deleteCard(int index) {
      flashcards.removeAt(index);
      saveCard();
    }

    void nextCard() {
      if (currentIndex.value < flashcards.length - 1) {
        currentIndex.value++;
      }
    }

    void prevCard() {
      if (currentIndex.value > 0) {
        currentIndex.value--;
      }
    }
  }
