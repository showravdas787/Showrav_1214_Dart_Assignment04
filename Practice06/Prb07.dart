import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswer;

  Question(this.questionText, this.options, this.correctAnswer);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print('--- Simple Quiz ---\n');

    for (int i = 0; i < questions.length; i++) {
      var q = questions[i];
      print('Q${i + 1}: ${q.questionText}');
      for (int j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }

      stdout.write('Your answer: ');
      var input = stdin.readLineSync();

      if (int.tryParse(input ?? '') == q.correctAnswer) {
        print('✅ Correct!\n');
        score++;
      } else {
        print('❌ Wrong! Correct answer: ${q.options[q.correctAnswer - 1]}\n');
      }
    }

    print('🎯 Your Score: $score / ${questions.length}');
  }
}

void main() {
  var questions = [
    Question('What is the capital of Bangladesh?', [
      'Dhaka',
      'Chittagong',
      'Sylhet',
    ], 1),
    Question('Which language is used in Flutter?', [
      'Python',
      'Dart',
      'Java',
    ], 2),
    Question('2 + 2 = ?', ['3', '4', '5'], 2),
  ];

  var quiz = Quiz(questions);
  quiz.start();
}
