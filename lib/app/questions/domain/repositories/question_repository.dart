import 'package:dartz/dartz.dart';

import '../entities/entities.dart';
import '../errors/errors.dart';

abstract class QuestionRepository {
  Future<Either<Failure, Question>> getQuestions(Question question);
  Future<Either<Failure, Answer>> selectAnswer(Answer answer);
  Future<Either<Failure, Question>> submitAnswer(
      Question question, Answer answer);
}
