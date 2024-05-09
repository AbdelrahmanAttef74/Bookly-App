import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioExeption(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection time out');
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate');

      case DioExceptionType.badResponse:
        return ServerFailure('Bad response');

      case DioExceptionType.cancel:
        return ServerFailure('Request canceld');

      case DioExceptionType.connectionError:
        return ServerFailure('connection time out');

      case DioExceptionType.unknown:
        return ServerFailure('Request unknown');
      default:
        return ServerFailure('Oops there was ann error');
    }
  }
}
