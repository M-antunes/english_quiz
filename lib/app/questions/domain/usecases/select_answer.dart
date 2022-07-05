import 'package:dartz/dartz.dart';

import '../entities/entities.dart';
import '../errors/errors.dart';
import '../repositories/question_repository.dart';

abstract class SelectAnswer {
  Future<Either<Failure, Answer>> call(Answer answer);
}

class SelectAnswerImpl implements SelectAnswer {
  final QuestionRepository repository;
  SelectAnswerImpl(this.repository);

  @override
  Future<Either<Failure, Answer>> call(Answer answer) async {
    return await _selectAnswer(answer);
  }

  Future<Either<Failure, Answer>> _selectAnswer(Answer answer) async {
    var result = await repository.selectAnswer(answer);
    return result;
  }
}
