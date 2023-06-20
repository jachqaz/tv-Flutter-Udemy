part of 'http.dart';

void _printLogs(Json logs, StackTrace? stackTrace) {
  try {
    log(const JsonEncoder.withIndent(' ').convert(logs),
        stackTrace: stackTrace);
  } catch (e) {
    log(e.toString());
  }
}
