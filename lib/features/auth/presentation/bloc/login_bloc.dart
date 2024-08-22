import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/features/auth/data/model/login_request_model.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';
import 'package:i_shop/features/auth/domain/usecase/auth_usecase.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_event.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUserUseCase loginUserUseCase;

  final LoginWithGoogleUseCase loginWithGoogleUseCase;
  final LoginWithFacebookUseCase loginWithFacebookUseCase;

  AppUser? appUser;
  LoginBloc(
      {required this.loginUserUseCase,
      required this.loginWithGoogleUseCase,
      required this.loginWithFacebookUseCase})
      : super(const LoginInitial()) {
    on<LoginRequested>(_onLoginRequested, transformer: droppable());
    on<GoogleLoginRequested>(_onGoogleLoginRequested, transformer: droppable());
    on<FacebookLoginRequested>(_onFacebookLoginRequested,
        transformer: droppable());
  }

  Future<void> _onLoginRequested(
      LoginRequested event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());

    final result = await loginUserUseCase.call(
      loginRequestModel: LoginRequestModel(
          username: event.username,
          password: event.password,
          expiresInMins: 60),
    );

    result.fold((exception) => emit(LoginError(exception.message)), (user) {
      appUser = user;
      emit(LoginSuccess(user));
    });
  }

  Future<void> _onGoogleLoginRequested(
      GoogleLoginRequested event, Emitter<LoginState> emit) async {
    print(
        '_onGoogleLoginRequested event triggered ***************************');

    emit(const LoginLoading());

    final result = await loginWithGoogleUseCase.call();

    result.fold(
      (exception) => emit(LoginError(exception.message)),
      (user) => emit(LoginSuccess(user)),
    );
  }

  Future<void> _onFacebookLoginRequested(
      FacebookLoginRequested event, Emitter<LoginState> emit) async {
    print('_onFacebookLoginRequested event triggered **********************');

    emit(const LoginLoading());

    final result = await loginWithFacebookUseCase.call();

    result.fold(
      (exception) => emit(LoginError(exception.message)),
      (user) => emit(LoginSuccess(user)),
    );
  }
}
