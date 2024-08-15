import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException implements Exception {
  factory AppException.fetchData() = FetchDataException;
  factory AppException.badRequest() = BadRequestException;
  factory AppException.unauthorized() = UnauthorizedException;
  factory AppException.notFound() = NotFoundException;
  factory AppException.internalServerError() = InternalServerErrorException;
  factory AppException.noInternet() = NoInternetException;
  factory AppException.connectionTimeout() = ConnectionTimeoutException;
  factory AppException.sendTimeout() = SendTimeoutException;
  factory AppException.receiveTimeout() = ReceiveTimeoutException;
  factory AppException.requestCancelled() = RequestCancelledException;
  factory AppException.unknown() = UnknownException;
  factory AppException.hiveInitializationError() = HiveInitializationException;
  factory AppException.hiveOperation(String errorMessage) =
      HiveOperationException;
  factory AppException.hiveDataNotFound() = HiveDataNotFoundException;

  AppException._();

  String get message => when(
        fetchData: () => 'Error During Communication: Please try again later.',
        badRequest: () =>
            'Invalid Request: The request could not be understood.',
        unauthorized: () =>
            'Unauthorized: Access is denied due to invalid credentials.',
        notFound: () => 'Not Found: The requested resource could not be found.',
        internalServerError: () =>
            'Internal Server Error: Something went wrong on our end.',
        noInternet: () =>
            'No Internet Connection: Please check your network settings.',
        connectionTimeout: () =>
            'Connection Timeout: The connection has timed out.',
        sendTimeout: () => 'Send Timeout: The request could not be sent.',
        receiveTimeout: () =>
            'Receive Timeout: The response could not be received.',
        requestCancelled: () => 'Request Cancelled: The request was cancelled.',
        unknown: () => 'An unknown error occurred.',
        hiveInitializationError: () =>
            'Hive Initialization Error: Failed to initialize Hive.',
        hiveOperation: (errorMessage) => errorMessage,
        hiveDataNotFound: () =>
            'Hive Data Not Found: The requested data could not be found.',
      );
}
