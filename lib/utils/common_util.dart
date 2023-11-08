import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:snack_express/utils/loggers/log.dart';

class CommonUtil {
  /// This method [getDeviceBrightness] is used to get device theme
  static Brightness get getDeviceBrightness {
    try {
      return SchedulerBinding.instance.platformDispatcher.platformBrightness;
    } catch (_) {
      return Brightness.light;
    }
  }

  /// This method [catchError] is used to Prints a message to the
  /// console related to any error found on use
  ///
  static Future<bool> catchError(
    dynamic exception, [
    StackTrace? stackTrace,
  ]) async {
    Log.warning('Error:\n${exception.toString()}');
    Log.warning('StackTrace:\n${stackTrace.toString()}');

    // try {
    //   await Sentry.captureException(exception, stackTrace: stackTrace);
    //   await Injector().find<FirebaseManager>().crashlytics.recordError(
    //         exception,
    //         stackTrace,
    //       );
    // } catch (e) {
    //   Log.warning('Sending report to Cloud failed: $e');
    //   Log.warning('Original error: $exception');
    // }

    return false;
  }
}
