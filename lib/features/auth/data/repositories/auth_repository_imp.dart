import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/core/error/exceptions_errors.dart';
import 'package:i_shop/core/firebase/firebase_auth_services.dart';
import 'package:i_shop/features/auth/data/datasources/auth_local_data_source.dart';
import 'package:i_shop/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:i_shop/features/auth/data/model/login_request_model.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';
import 'package:i_shop/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  final FirebaseAuthServices firebaseAuthServices;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepositoryImpl({
    required this.authLocalDataSource,
    required this.authRemoteDataSource,
    required this.firebaseAuthServices,
  });

  @override
  Future<Either<AppException, AppUser>> loginUser(
      {required LoginRequestModel loginRequestModel}) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }

      final loginResponse =
          await authRemoteDataSource.loginUser(loginRequestModel);

      final appUser = AppUser(
          id: loginResponse.id.toString(),
          name: "${loginResponse.firstName} ${loginResponse.lastName} ",
          email: loginResponse.email,
          image: loginResponse.image);
      await authLocalDataSource.addUser(appUser);
      return Right(appUser);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, AppUser>> loginWithGoogle() async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }
      final user = await firebaseAuthServices.signInWithGoogle();
      if (user != null) {
        final appUser = AppUser(
          id: user.uid,
          name: user.displayName!,
          email: user.email!,
          image: user.photoURL!,
        );
        await authLocalDataSource.addUser(appUser);

        return Right(appUser);
      } else {
        return Left(AppException.unauthorized());
      }
    } on FirebaseAuthException catch (e) {
      return Left(AppException.googleAuth(e.message ?? " "));
    } catch (e) {
      return Left(AppException.unknown());
    }
  }

  @override
  Future<Either<AppException, AppUser>> loginWithFacebook() async {
    try {
      final user = await firebaseAuthServices.signInWithFacebook();
      if (user != null) {
        final appUser = AppUser(
          id: user.uid,
          name: user.displayName ?? '',
          email: user.email ?? '',
          image: user.photoURL ?? '',
        );
        await authLocalDataSource.addUser(appUser);

        return Right(appUser);
      } else {
        return Left(AppException.unauthorized());
      }
    } on FirebaseAuthException catch (e) {
      return Left(AppException.facebookAuth(e.message ?? " "));
    } catch (e) {
      return Left(AppException.unknown());
    }
  }

  @override
  Future<Either<AppException, AppUser>> getUser() async {
    try {
      final user = await authLocalDataSource.getUser();
      if (user != null) {
        return Right(user);
      } else {
        return Left(AppException.hiveDataNotFound());
      }
    } on AppException catch (e) {
      return Left(e);
    }
  }
}
