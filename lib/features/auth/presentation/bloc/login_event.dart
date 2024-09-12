import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginRequested(
      {required String username, required String password}) = LoginRequested;

  const factory LoginEvent.googleLoginRequested() = GoogleLoginRequested;
  const factory LoginEvent.facebookLoginRequested() = FacebookLoginRequested;
  const factory LoginEvent.logoutRequested() = LogoutRequested;
    const factory LoginEvent.loginInit() = LoginInit;

}
