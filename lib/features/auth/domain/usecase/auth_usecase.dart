import 'package:dartz/dartz.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/features/auth/data/model/login_request_model.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';
import 'package:i_shop/features/auth/domain/repositories/auth_repository.dart';

class LoginUserUseCase {
  final AuthRepository authRepository;

  LoginUserUseCase({required this.authRepository});

  Future<Either<AppException, AppUser>> call(
      {required LoginRequestModel loginRequestModel}) async {
    return await authRepository.loginUser(loginRequestModel: loginRequestModel);
  }
}

class LoginWithGoogleUseCase {
  final AuthRepository repository;

  LoginWithGoogleUseCase(this.repository);

  Future<Either<AppException, AppUser>> call() async {
    return await repository.loginWithGoogle();
  }
}

class LoginWithFacebookUseCase {
  final AuthRepository repository;

  LoginWithFacebookUseCase(this.repository);

  Future<Either<AppException, AppUser>> call() async {
    return await repository.loginWithFacebook();
  }
}


class GetUserUseCase {
  final AuthRepository repository;

  GetUserUseCase(this.repository);

  Future<Either<AppException, AppUser>> call() async {
    return await repository.getUser();
  }
}
