import 'dart:io';

import '../../../domain/either/either.dart';
import '../../../domain/failures/http_request/http_request_failure.dart';
import '../../http/http.dart';

Either<HttpRequestFailure, R> handleHttpFailure<R>(HttpFailure httpFailure) {
  final failure = () {
    final statusCode = httpFailure.statusCode;
    switch (statusCode) {
      case HttpStatus.notFound:
        return HttpRequestFailure.notFound();
      case HttpStatus.unauthorized:
        return HttpRequestFailure.unauthorized();
    }
    if (httpFailure.exception == NetworkException) {
      return HttpRequestFailure.network();
    }
    return HttpRequestFailure.unknown();
  }();
  return Either.left(failure);
}
