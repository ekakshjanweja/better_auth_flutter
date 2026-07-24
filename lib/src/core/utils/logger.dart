import "package:logger/logger.dart";

/// Internal logging for better_auth_flutter.
///
/// Disabled by default. Enable with `BetterAuthFlutter.initialize(
/// enableLogging: kDebugMode)`.
///
/// This logger deliberately never accepts headers, cookies, or request/response
/// bodies — those carry session tokens, and earlier versions of this package
/// printed `Set-Cookie` to stdout on every failed request. Log identifiers and
/// status codes, never credentials.
class BetterAuthLog {
  BetterAuthLog._();

  /// Whether internal logging is emitted. Off by default so that a release
  /// build never writes auth diagnostics to the system log.
  static bool enabled = false;

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 2,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
  );

  static void debug(String message) {
    if (!enabled) return;
    _logger.d(message);
  }

  static void info(String message) {
    if (!enabled) return;
    _logger.i(message);
  }

  static void warning(String message) {
    if (!enabled) return;
    _logger.w(message);
  }

  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    if (!enabled) return;
    _logger.e(message, error: error, stackTrace: stackTrace);
  }
}
