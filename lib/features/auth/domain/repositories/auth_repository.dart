import 'package:dartz/dartz.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/features/auth/data/model/login_request_model.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';

abstract class AuthRepository {
  Future<Either<AppException, AppUser>> loginUser({
    required LoginRequestModel loginRequestModel,
  });
  Future<Either<AppException, AppUser>> loginWithGoogle();
  Future<Either<AppException, AppUser>> loginWithFacebook();

  Future<Either<AppException, AppUser>>  getUser();
}
