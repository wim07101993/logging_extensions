import 'package:logging/logging.dart';
import 'package:logging_extensions/src/level_converter/log_level_converter.dart';

/// Converts a [Level] to a unicode symbol.
class LogLevelToSymbolConverter extends LogLevelConverter<String> {
  /// Constructs a new [LogLevelToSymbolConverter].
  ///
  /// The default values are:
  /// - finest: an empty string
  /// - finer: `π`
  /// - fine: `F`
  /// - config: `β`
  /// - info: `β`
  /// - warning: `β `
  /// - severe: `β`
  /// - shout: `(γοΎΠοΎ)οΌ!!`
  ///
  /// If the given input does not match any of the standard levels, an empty
  /// string is returned.
  LogLevelToSymbolConverter({
    String? defaultValue,
    String? finest,
    String? finer,
    String? fine,
    String? config,
    String? info,
    String? warning,
    String? severe,
    String? shout,
  }) : super(
          defaultValue: defaultValue ?? '',
          finest: finest ?? '',
          finer: finer ?? 'π',
          fine: fine ?? 'F',
          config: config ?? 'βοΈ',
          info: info ?? 'β',
          warning: warning ?? 'β ',
          severe: severe ?? 'β',
          shout: shout ?? '(γοΎΠοΎ)οΌ!!',
        );
}
