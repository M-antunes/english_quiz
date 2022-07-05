import 'package:dartz/dartz.dart';
import 'package:english_quiz/app/questions/domain/entities/answer.dart';
import 'package:english_quiz/app/questions/domain/repositories/question_repository.dart';

import '../entities/question.dart';
import '../errors/errors.dart';

abstract class SubmitAnswer {
  Future<Either<Failure, Question>> call(Question question, Answer answer);
}

class SubmitAnswerImpl implements SubmitAnswer {
  final QuestionRepository repository;
  SubmitAnswerImpl(this.repository);

  @override
  Future<Either<Failure, Question>> call(
      Question question, Answer answer) async {
    return await _submitAnswer(question, answer);
  }

  Future<Either<Failure, Question>> _submitAnswer(
      Question question, Answer answer) async {
    final result = repository.submitAnswer(question, answer);
    return result;
  }
}
