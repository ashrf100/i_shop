import 'package:dio/dio.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:logging/logging.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

final Logger _logger = Logger('ErrorHandler');

class ErrorHandler {
  static Future<AppException> handleError(dynamic error) async {
    if (error is DioException) {
      // Handle Dio errors
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          _logger.severe('Connection Timeout Exception: ${error.message}');
          return Future.value( AppException.connectionTimeout());
        case DioExceptionType.sendTimeout:
          _logger.severe('Send Timeout Exception: ${error.message}');
          return Future.value( AppException.sendTimeout());
        case DioExceptionType.receiveTimeout:
          _logger.severe('Receive Timeout Exception: ${error.message}');
          return Future.value( AppException.receiveTimeout());
        case DioExceptionType.cancel:
          _logger.warning('Request Cancelled: ${error.message}');
          return Future.value( AppException.requestCancelled());
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode ?? 'Unknown';
          _logger.severe('Bad Response: Status Code $statusCode');
          // Map status code to custom exceptions
          switch (statusCode) {
            case 400:
              return Future.value( AppException.badRequest());
            case 401:
              return Future.value( AppException.unauthorized());
            case 404:
              return Future.value( AppException.notFound());
            case 500:
              return Future.value( AppException.internalServerError());
            default:
              return Future.value( AppException.unknown());
          }
        case DioExceptionType.unknown:
        default:
          _logger.severe('Unknown Dio Exception: ${error.message}');
          return Future.value( AppException.unknown());
      }
    } else if (error is AppException) {
      // Handle custom exceptions
      _logger.severe('AppException: ${error.toString()}');
      return Future.value(error);
    } else {
      // Handle other errors
      _logger.severe('Unexpected Error: ${error.toString()}');
      return Future.value( AppException.unknown());
    }
  }

  static Future<bool> checkInternetConnection() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }
}
