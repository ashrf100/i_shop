import 'package:dio/dio.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:logging/logging.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

final Logger _logger = Logger('ErrorHandler');

class ErrorHandler {
  static Future<AppException> handleError(dynamic error) async {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          return Future.value(AppException.connectionTimeout());
        case DioExceptionType.sendTimeout:
          return Future.value(AppException.sendTimeout());
        case DioExceptionType.receiveTimeout:
          return Future.value(AppException.receiveTimeout());
        case DioExceptionType.cancel:
          return Future.value(AppException.requestCancelled());
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode ?? 'Unknown';
          switch (statusCode) {
            case 400:
              return Future.value(AppException.badRequest());
            case 401:
              return Future.value(AppException.unauthorized());
            case 404:
              return Future.value(AppException.notFound());
            case 500:
              return Future.value(AppException.internalServerError());
            default:
              return Future.value(AppException.unknown());
          }
        case DioExceptionType.unknown:
        default:
          return Future.value(AppException.unknown());
      }
    } else if (error is AppException) {
      return Future.value(error);
    } else {
      return Future.value(AppException.unknown());
    }
  }

  static Future<bool> checkInternetConnection() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }
}
