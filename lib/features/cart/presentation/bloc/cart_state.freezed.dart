// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppCart cart) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(AppCart cart)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppCart cart)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) init,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitState value)? init,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? init,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartInitStateImplCopyWith<$Res> {
  factory _$$CartInitStateImplCopyWith(
          _$CartInitStateImpl value, $Res Function(_$CartInitStateImpl) then) =
      __$$CartInitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartInitStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartInitStateImpl>
    implements _$$CartInitStateImplCopyWith<$Res> {
  __$$CartInitStateImplCopyWithImpl(
      _$CartInitStateImpl _value, $Res Function(_$CartInitStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartInitStateImpl implements CartInitState {
  const _$CartInitStateImpl();

  @override
  String toString() {
    return 'CartState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartInitStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppCart cart) loaded,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(AppCart cart)? loaded,
    TResult? Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppCart cart)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) init,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitState value)? init,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? init,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CartInitState implements CartState {
  const factory CartInitState() = _$CartInitStateImpl;
}

/// @nodoc
abstract class _$$CartLoadingStateImplCopyWith<$Res> {
  factory _$$CartLoadingStateImplCopyWith(_$CartLoadingStateImpl value,
          $Res Function(_$CartLoadingStateImpl) then) =
      __$$CartLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingStateImpl>
    implements _$$CartLoadingStateImplCopyWith<$Res> {
  __$$CartLoadingStateImplCopyWithImpl(_$CartLoadingStateImpl _value,
      $Res Function(_$CartLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoadingStateImpl implements CartLoadingState {
  const _$CartLoadingStateImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppCart cart) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(AppCart cart)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppCart cart)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) init,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitState value)? init,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? init,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartLoadingState implements CartState {
  const factory CartLoadingState() = _$CartLoadingStateImpl;
}

/// @nodoc
abstract class _$$CartLoadedStateImplCopyWith<$Res> {
  factory _$$CartLoadedStateImplCopyWith(_$CartLoadedStateImpl value,
          $Res Function(_$CartLoadedStateImpl) then) =
      __$$CartLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppCart cart});
}

/// @nodoc
class __$$CartLoadedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadedStateImpl>
    implements _$$CartLoadedStateImplCopyWith<$Res> {
  __$$CartLoadedStateImplCopyWithImpl(
      _$CartLoadedStateImpl _value, $Res Function(_$CartLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = null,
  }) {
    return _then(_$CartLoadedStateImpl(
      null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as AppCart,
    ));
  }
}

/// @nodoc

class _$CartLoadedStateImpl implements CartLoadedState {
  const _$CartLoadedStateImpl(this.cart);

  @override
  final AppCart cart;

  @override
  String toString() {
    return 'CartState.loaded(cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartLoadedStateImpl &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadedStateImplCopyWith<_$CartLoadedStateImpl> get copyWith =>
      __$$CartLoadedStateImplCopyWithImpl<_$CartLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppCart cart) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(AppCart cart)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppCart cart)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) init,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitState value)? init,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? init,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CartLoadedState implements CartState {
  const factory CartLoadedState(final AppCart cart) = _$CartLoadedStateImpl;

  AppCart get cart;
  @JsonKey(ignore: true)
  _$$CartLoadedStateImplCopyWith<_$CartLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartErrorStateImplCopyWith<$Res> {
  factory _$$CartErrorStateImplCopyWith(_$CartErrorStateImpl value,
          $Res Function(_$CartErrorStateImpl) then) =
      __$$CartErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CartErrorStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartErrorStateImpl>
    implements _$$CartErrorStateImplCopyWith<$Res> {
  __$$CartErrorStateImplCopyWithImpl(
      _$CartErrorStateImpl _value, $Res Function(_$CartErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CartErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartErrorStateImpl implements CartErrorState {
  const _$CartErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartErrorStateImplCopyWith<_$CartErrorStateImpl> get copyWith =>
      __$$CartErrorStateImplCopyWithImpl<_$CartErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(AppCart cart) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(AppCart cart)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(AppCart cart)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartInitState value) init,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadedState value) loaded,
    required TResult Function(CartErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartInitState value)? init,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadedState value)? loaded,
    TResult? Function(CartErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartInitState value)? init,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadedState value)? loaded,
    TResult Function(CartErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CartErrorState implements CartState {
  const factory CartErrorState(final String message) = _$CartErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CartErrorStateImplCopyWith<_$CartErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
