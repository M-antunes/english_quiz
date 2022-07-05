class Failure implements Exception {
  final String message;

  Failure({this.message = ''});
}

class GettingQuestionFailure extends Failure {
  GettingQuestionFailure({String message = ''}) : super(message: message);
}
