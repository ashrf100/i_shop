import 'package:dio/dio.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/core/error/exceptions_errors.dart';
import 'package:i_shop/core/network/api_service.dart';
import 'package:i_shop/features/auth/data/model/login_request_model.dart';
import 'package:i_shop/features/auth/data/model/login_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> loginUser(LoginRequestModel request);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSourceImpl({required this.apiService});

  @override
  Future<LoginResponseModel> loginUser(LoginRequestModel request) async {
    try {
      final response = await apiService.loginUser(request: request);
      return response;
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw AppException.unauthorized();
      }
      throw await ErrorHandler.handleError(e);
    } catch (e) {
      throw await ErrorHandler.handleError(e);
    }
  }
}
