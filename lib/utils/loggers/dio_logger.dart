import 'package:dio/dio.dart' show RequestOptions, Response, DioError;
import 'package:snack_express/utils/loggers/log.dart';

/// In console logger,
/// Focus on tracking http network service activity
class DioLogger {
  static const String TAG = 'DioLogger';

  static void onSend(RequestOptions options) {
    Log.info(
      TAG,
      'Request Path: [${options.method}] ${options.baseUrl}${options.path}',
    );
    Log.info(TAG, 'Request Data: ${options.data.toString()}');
    Log.info(TAG, 'Request Header: ${options.headers}');
  }

  static void onSuccess(Response response) {
    Log.info(
      TAG,
      'Response Path: [${response.requestOptions.method}] ${response.requestOptions.baseUrl}${response.requestOptions.path} Request Data : ${response.requestOptions.data.toString()}',
    );
    Log.info(TAG, 'Response statusCode: ${response.statusCode}');
    Log.info(TAG, 'Response data: ${response.data.toString()}');
  }

  static void onError(DioError error) {
    if (null != error.response) {
      Log.warning(
        TAG,
        'Error Path: [${error.response?.requestOptions.method}] ${error.response?.requestOptions.baseUrl}${error.response?.requestOptions.path} Request Data : ${error.response?.requestOptions.data.toString()}',
      );
      Log.warning(
        TAG,
        'Error statusCode: ${error.response?.statusCode}',
      );
      Log.warning(
        TAG,
        'Error data: ${null != error.response?.data ? error.response?.data.toString() : ''}',
      );
    }
    Log.warning(TAG, 'Error Message: ${error.message}');
  }
}
