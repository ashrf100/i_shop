import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success(AppUser user) = LoginSuccess;
  const factory LoginState.error(String msg) = LoginError;
}
