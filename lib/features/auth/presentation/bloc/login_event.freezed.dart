// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function() googleLoginRequested,
    required TResult Function() facebookLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function()? googleLoginRequested,
    TResult? Function()? facebookLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function()? googleLoginRequested,
    TResult Function()? facebookLoginRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(GoogleLoginRequested value) googleLoginRequested,
    required TResult Function(FacebookLoginRequested value)
        facebookLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult? Function(FacebookLoginRequested value)? facebookLoginRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult Function(FacebookLoginRequested value)? facebookLoginRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginRequestedImplCopyWith<$Res> {
  factory _$$LoginRequestedImplCopyWith(_$LoginRequestedImpl value,
          $Res Function(_$LoginRequestedImpl) then) =
      __$$LoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username, String password});
}

/// @nodoc
class __$$LoginRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginRequestedImpl>
    implements _$$LoginRequestedImplCopyWith<$Res> {
  __$$LoginRequestedImplCopyWithImpl(
      _$LoginRequestedImpl _value, $Res Function(_$LoginRequestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginRequestedImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginRequestedImpl implements LoginRequested {
  const _$LoginRequestedImpl({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.loginRequested(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      __$$LoginRequestedImplCopyWithImpl<_$LoginRequestedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function() googleLoginRequested,
    required TResult Function() facebookLoginRequested,
  }) {
    return loginRequested(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function()? googleLoginRequested,
    TResult? Function()? facebookLoginRequested,
  }) {
    return loginRequested?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function()? googleLoginRequested,
    TResult Function()? facebookLoginRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(GoogleLoginRequested value) googleLoginRequested,
    required TResult Function(FacebookLoginRequested value)
        facebookLoginRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult? Function(FacebookLoginRequested value)? facebookLoginRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult Function(FacebookLoginRequested value)? facebookLoginRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class LoginRequested implements LoginEvent {
  const factory LoginRequested(
      {required final String username,
      required final String password}) = _$LoginRequestedImpl;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleLoginRequestedImplCopyWith<$Res> {
  factory _$$GoogleLoginRequestedImplCopyWith(_$GoogleLoginRequestedImpl value,
          $Res Function(_$GoogleLoginRequestedImpl) then) =
      __$$GoogleLoginRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleLoginRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GoogleLoginRequestedImpl>
    implements _$$GoogleLoginRequestedImplCopyWith<$Res> {
  __$$GoogleLoginRequestedImplCopyWithImpl(_$GoogleLoginRequestedImpl _value,
      $Res Function(_$GoogleLoginRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleLoginRequestedImpl implements GoogleLoginRequested {
  const _$GoogleLoginRequestedImpl();

  @override
  String toString() {
    return 'LoginEvent.googleLoginRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleLoginRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function() googleLoginRequested,
    required TResult Function() facebookLoginRequested,
  }) {
    return googleLoginRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function()? googleLoginRequested,
    TResult? Function()? facebookLoginRequested,
  }) {
    return googleLoginRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function()? googleLoginRequested,
    TResult Function()? facebookLoginRequested,
    required TResult orElse(),
  }) {
    if (googleLoginRequested != null) {
      return googleLoginRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(GoogleLoginRequested value) googleLoginRequested,
    required TResult Function(FacebookLoginRequested value)
        facebookLoginRequested,
  }) {
    return googleLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult? Function(FacebookLoginRequested value)? facebookLoginRequested,
  }) {
    return googleLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult Function(FacebookLoginRequested value)? facebookLoginRequested,
    required TResult orElse(),
  }) {
    if (googleLoginRequested != null) {
      return googleLoginRequested(this);
    }
    return orElse();
  }
}

abstract class GoogleLoginRequested implements LoginEvent {
  const factory GoogleLoginRequested() = _$GoogleLoginRequestedImpl;
}

/// @nodoc
abstract class _$$FacebookLoginRequestedImplCopyWith<$Res> {
  factory _$$FacebookLoginRequestedImplCopyWith(
          _$FacebookLoginRequestedImpl value,
          $Res Function(_$FacebookLoginRequestedImpl) then) =
      __$$FacebookLoginRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FacebookLoginRequestedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$FacebookLoginRequestedImpl>
    implements _$$FacebookLoginRequestedImplCopyWith<$Res> {
  __$$FacebookLoginRequestedImplCopyWithImpl(
      _$FacebookLoginRequestedImpl _value,
      $Res Function(_$FacebookLoginRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FacebookLoginRequestedImpl implements FacebookLoginRequested {
  const _$FacebookLoginRequestedImpl();

  @override
  String toString() {
    return 'LoginEvent.facebookLoginRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacebookLoginRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) loginRequested,
    required TResult Function() googleLoginRequested,
    required TResult Function() facebookLoginRequested,
  }) {
    return facebookLoginRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username, String password)? loginRequested,
    TResult? Function()? googleLoginRequested,
    TResult? Function()? facebookLoginRequested,
  }) {
    return facebookLoginRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? loginRequested,
    TResult Function()? googleLoginRequested,
    TResult Function()? facebookLoginRequested,
    required TResult orElse(),
  }) {
    if (facebookLoginRequested != null) {
      return facebookLoginRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(GoogleLoginRequested value) googleLoginRequested,
    required TResult Function(FacebookLoginRequested value)
        facebookLoginRequested,
  }) {
    return facebookLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult? Function(FacebookLoginRequested value)? facebookLoginRequested,
  }) {
    return facebookLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(GoogleLoginRequested value)? googleLoginRequested,
    TResult Function(FacebookLoginRequested value)? facebookLoginRequested,
    required TResult orElse(),
  }) {
    if (facebookLoginRequested != null) {
      return facebookLoginRequested(this);
    }
    return orElse();
  }
}

abstract class FacebookLoginRequested implements LoginEvent {
  const factory FacebookLoginRequested() = _$FacebookLoginRequestedImpl;
}
