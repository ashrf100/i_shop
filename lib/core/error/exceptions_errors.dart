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
          throw ConnectionTimeoutException();
        case DioExceptionType.sendTimeout:
          _logger.severe('Send Timeout Exception: ${error.message}');
          throw SendTimeoutException();
        case DioExceptionType.receiveTimeout:
          _logger.severe('Receive Timeout Exception: ${error.message}');
          throw ReceiveTimeoutException();
        case DioExceptionType.cancel:
          _logger.warning('Request Cancelled: ${error.message}');
          throw RequestCancelledException();
        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode ?? 'Unknown';
          _logger.severe('Bad Response: Status Code $statusCode');
          // Map status code to custom exceptions
          switch (statusCode) {
            case 400:
              throw BadRequestException();
            case 401:
              throw UnauthorizedException();
            case 404:
              throw NotFoundException();
            case 500:
              throw InternalServerErrorException();
            default:
              throw FetchDataException();
          }
        case DioExceptionType.unknown:
        default:
          _logger.severe('Unknown Dio Exception: ${error.message}');
          throw UnknownException();
      }
    } else if (error is AppException) {
      // Handle custom exceptions
      _logger.severe('AppException: ${error.toString()}');
      throw error;
    } else {
      // Handle other errors
      _logger.severe('Unexpected Error: ${error.toString()}');
      throw UnknownException();
    }
  }

  static Future<bool> checkInternetConnection() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }
}
