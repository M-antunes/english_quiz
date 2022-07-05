import 'package:dartz/dartz.dart';
import 'package:english_quiz/app/questions/domain/entities/question.dart';
import 'package:english_quiz/app/questions/domain/repositories/question_repository.dart';

import '../errors/errors.dart';

abstract class GetQuestion {
  Future<Either<Failure, Question>> call(Question question);
}

class GetQuestionImpl implements GetQuestion {
  final QuestionRepository repository;
  GetQuestionImpl(this.repository);

  @override
  Future<Either<Failure, Question>> call(Question question) async {
    return await _getQuestion(question);
  }

  // Either<Failure, Question> validateQuestion(Question question){

  // }

  Future<Either<Failure, Question>> _getQuestion(Question question) {
    final result = repository.getQuestions(question);
    return result;
  }
}
