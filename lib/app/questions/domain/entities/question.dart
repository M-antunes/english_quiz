import 'package:english_quiz/app/questions/domain/entities/difficulty.dart';

import 'answer.dart';

class Question {
  final String question;
  final List<Answer> answers;
  final Difficulty difficulty;
  Question({
    required this.question,
    required this.answers,
    required this.difficulty,
  });
}
