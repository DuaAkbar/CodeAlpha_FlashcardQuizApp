```markdown
> 🚀 CodeAlpha Internship Project

# 📚 Flashcard Quiz App

An interactive and minimal Flutter app designed for effective learning through flashcards. This app allows users to add, view, edit, delete, and flip through flashcards with a smooth and user-friendly interface.

---

## 🔹 Features

- 📝 Add your own custom flashcards
- ✏️ Edit or delete any flashcard anytime
- 🧠 Quiz-style navigation through questions
- 🔁 Reveal answers on tap
- ⏮️⏭️ Prev/Next navigation support
- 💾 Data persistence using GetStorage
- 🎨 Clean, aesthetic UI with responsive layouts

---

## 💡 Tech Stack

- **Flutter** & **Dart**
- **GetX** for state management
- **GetStorage** for local persistence

---

## 📂 Project Structure

```bash
lib/
├── Controllers/
│   └── flashCardController.dart     # Manages all flashcard logic
├── Model/
│   └── FlashCardModel.dart          # Flashcard model
├── views/
│   ├── Homescreen.dart              # Flashcard list screen
│   ├── AddCardScreen.dart           # Add new flashcards
│   ├── EditScreen.dart              # Edit existing flashcards
│   └── CardScreen.dart              # View/flip flashcards
└── main.dart                        # App entry point
````

---

## 🚀 How to Run

1. **Clone the repository**

   
   git clone https://github.com/DuaAkbar/CodeAlpha_FlashcardQuizApp
   

2. **Install dependencies**
  
   flutter pub get
   

3. **Run the app**

   flutter run
   

---

## 📹 Demo Video

[🔗 Click here to watch the demo on LinkedIn]( https://www.linkedin.com/posts/dua-akbar-73686636b_flutter-codealpha-flashcards-activity-7352818790876770304-guVf)

---

## 📌 Notes

* This app does not use a backend—data is stored locally using `GetStorage`.

---