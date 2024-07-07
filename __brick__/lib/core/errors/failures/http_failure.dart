import 'package:{{projectName}}/core/errors/failures/failure.dart';

enum HttpFailureType {
  unauthorized,
  forbidden,
  notFound,
  badRequest,
  internalServerError,
  serviceUnavailable,
  unknown
}


/// Http failure
class HttpFailure extends Failure {
  HttpFailure(
      HttpFailureType type, String description, StackTrace stackTrace,
      {args})
      : super(type, description, stackTrace, args);
}