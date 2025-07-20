class Flashcardmodel {
  String question;
  String answer;

  Flashcardmodel({required this.question, required this.answer});

  Map<String, dynamic> toJson() => {
        'question': question,
        'answer': answer,
      };

  factory Flashcardmodel.fromJson(Map<String, dynamic> json) => Flashcardmodel(
        question: json['question'],
        answer: json['answer'],
      );
}
