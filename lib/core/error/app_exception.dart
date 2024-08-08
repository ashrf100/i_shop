abstract class AppException implements Exception {
  String get message;

  @override
  String toString() {
    return message;
  }
}

class FetchDataException extends AppException {
  @override
  String get message => 'Error During Communication: Please try again later.';
}

class BadRequestException extends AppException {
  @override
  String get message => 'Invalid Request: The request could not be understood.';
}

class UnauthorizedException extends AppException {
  @override
  String get message =>
      'Unauthorized: Access is denied due to invalid credentials.';
}

class NotFoundException extends AppException {
  @override
  String get message => 'Not Found: The requested resource could not be found.';
}

class InternalServerErrorException extends AppException {
  @override
  String get message =>
      'Internal Server Error: Something went wrong on our end.';
}

class NoInternetException extends AppException {
  @override
  String get message =>
      'No Internet Connection: Please check your network settings.';
}

class ConnectionTimeoutException extends AppException {
  @override
  String get message => 'Connection Timeout: The connection has timed out.';
}

class SendTimeoutException extends AppException {
  @override
  String get message => 'Send Timeout: The request could not be sent.';
}

class ReceiveTimeoutException extends AppException {
  @override
  String get message => 'Receive Timeout: The response could not be received.';
}

class RequestCancelledException extends AppException {
  @override
  String get message => 'Request Cancelled: The request was cancelled.';
}

class UnknownException extends AppException {
  @override
  String get message => 'An unknown error occurred.';
}
