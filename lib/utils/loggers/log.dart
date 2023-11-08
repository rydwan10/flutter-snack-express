import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:snack_express/utils/common_util.dart';

class Log {
  static const String TAG = 'Logger';
  static Logger? _instance;

  static void init() {
    Logger.root.onRecord.listen((record) {
      debugPrint('${record.level.name}: ${record.message}');
    });
    _instance = Logger(TAG);
  }

  static void declareLevel({required bool trackAll}) {
    if (trackAll) {
      setLevel(Level.ALL);
    } else {
      setLevel(Level.OFF);
    }
  }

  static void setLevel(Level level) {
    Logger.root.level = level;
  }

  static void info([tag, message, Object? error, StackTrace? stackTrace]) {
    try {
      _instance!.info('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }

  static void warning([tag, message, Object? error, StackTrace? stackTrace]) {
    try {
      _instance!.warning('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }

  static void config([tag, message, Object? error, StackTrace? stackTrace]) {
    try {
      _instance!.config('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }

  static void fine([tag, message, Object? error, StackTrace? stackTrace]) {
    try {
      _instance!.fine('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }

  static void finer([tag, message, Object? error, StackTrace? stackTrace]) {
    try {
      _instance!.finer('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }

  static void finest({tag, message, Object? error, StackTrace? stackTrace}) {
    try {
      _instance!.finest('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }

  static void severe([tag, message, Object? error, StackTrace? stackTrace]) {
    try {
      _instance!.severe('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }

  static void shout([tag, message, Object? error, StackTrace? stackTrace]) {
    try {
      _instance!.shout('$tag - $message', error, stackTrace);
    } catch (e, s) {
      CommonUtil.catchError(e, s);
    }
  }
}
