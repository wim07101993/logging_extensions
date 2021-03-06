import 'package:logging/logging.dart';
import 'package:logging_extensions/src/sink/log_sink.dart';

/// Formats [LogRecord] to a [String]. This is used by various [LogSink]
/// implementations.
abstract class LogRecordFormatter {
  /// Const constructor for the extending classes.
  const LogRecordFormatter();

  /// Calls [format]
  String call(LogRecord logRecord) => format(logRecord);

  /// Formats a given [LogRecord] to a [String].
  String format(LogRecord logRecord);
}
