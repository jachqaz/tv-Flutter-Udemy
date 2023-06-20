part of 'http.dart';

void _printLogs(Json logs, StackTrace? stackTrace) {
  log(const JsonEncoder.withIndent(' ').convert(logs), stackTrace: stackTrace);
}
