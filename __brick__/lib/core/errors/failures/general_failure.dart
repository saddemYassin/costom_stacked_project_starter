import 'package:{{projectName}}/core/errors/failures/failure.dart';


enum GeneralFailureType {
  internetConnectionError,
  unexpectedError,
  formatError,
  socketException,
  noSuchMethodError,
  platformError,
  pathNotFoundError
}


/// General failure
class GeneralFailure extends Failure {
  GeneralFailure(
      GeneralFailureType type, String description, StackTrace stackTrace,
      {args})
      : super(type, description, stackTrace, args);
}