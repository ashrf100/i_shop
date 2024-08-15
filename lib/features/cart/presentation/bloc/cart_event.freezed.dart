// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loadCart,
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(UpdateCartRequestModel request) updateCart,
    required TResult Function(int productId, int newQuantity) updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loadCart,
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(UpdateCartRequestModel request)? updateCart,
    TResult? Function(int productId, int newQuantity)? updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loadCart,
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(UpdateCartRequestModel request)? updateCart,
    TResult Function(int productId, int newQuantity)? updateQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCart,
    required TResult Function(AddProductEvent value) addProduct,
    required TResult Function(UpdateCartEvent value) updateCart,
    required TResult Function(UpdateProductQuantityEvent value) updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartEvent value)? loadCart,
    TResult? Function(AddProductEvent value)? addProduct,
    TResult? Function(UpdateCartEvent value)? updateCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCart,
    TResult Function(AddProductEvent value)? addProduct,
    TResult Function(UpdateCartEvent value)? updateCart,
    TResult Function(UpdateProductQuantityEvent value)? updateQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCartEventImplCopyWith<$Res> {
  factory _$$LoadCartEventImplCopyWith(
          _$LoadCartEventImpl value, $Res Function(_$LoadCartEventImpl) then) =
      __$$LoadCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$LoadCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadCartEventImpl>
    implements _$$LoadCartEventImplCopyWith<$Res> {
  __$$LoadCartEventImplCopyWithImpl(
      _$LoadCartEventImpl _value, $Res Function(_$LoadCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadCartEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadCartEventImpl implements LoadCartEvent {
  const _$LoadCartEventImpl(this.userId);

  @override
  final int userId;

  @override
  String toString() {
    return 'CartEvent.loadCart(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCartEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCartEventImplCopyWith<_$LoadCartEventImpl> get copyWith =>
      __$$LoadCartEventImplCopyWithImpl<_$LoadCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loadCart,
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(UpdateCartRequestModel request) updateCart,
    required TResult Function(int productId, int newQuantity) updateQuantity,
  }) {
    return loadCart(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loadCart,
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(UpdateCartRequestModel request)? updateCart,
    TResult? Function(int productId, int newQuantity)? updateQuantity,
  }) {
    return loadCart?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loadCart,
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(UpdateCartRequestModel request)? updateCart,
    TResult Function(int productId, int newQuantity)? updateQuantity,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCart,
    required TResult Function(AddProductEvent value) addProduct,
    required TResult Function(UpdateCartEvent value) updateCart,
    required TResult Function(UpdateProductQuantityEvent value) updateQuantity,
  }) {
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartEvent value)? loadCart,
    TResult? Function(AddProductEvent value)? addProduct,
    TResult? Function(UpdateCartEvent value)? updateCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateQuantity,
  }) {
    return loadCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCart,
    TResult Function(AddProductEvent value)? addProduct,
    TResult Function(UpdateCartEvent value)? updateCart,
    TResult Function(UpdateProductQuantityEvent value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(this);
    }
    return orElse();
  }
}

abstract class LoadCartEvent implements CartEvent {
  const factory LoadCartEvent(final int userId) = _$LoadCartEventImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$LoadCartEventImplCopyWith<_$LoadCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductEventImplCopyWith<$Res> {
  factory _$$AddProductEventImplCopyWith(_$AddProductEventImpl value,
          $Res Function(_$AddProductEventImpl) then) =
      __$$AddProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int quantity});
}

/// @nodoc
class __$$AddProductEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddProductEventImpl>
    implements _$$AddProductEventImplCopyWith<$Res> {
  __$$AddProductEventImplCopyWithImpl(
      _$AddProductEventImpl _value, $Res Function(_$AddProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$AddProductEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddProductEventImpl implements AddProductEvent {
  const _$AddProductEventImpl(this.id, this.quantity);

  @override
  final int id;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addProduct(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductEventImplCopyWith<_$AddProductEventImpl> get copyWith =>
      __$$AddProductEventImplCopyWithImpl<_$AddProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loadCart,
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(UpdateCartRequestModel request) updateCart,
    required TResult Function(int productId, int newQuantity) updateQuantity,
  }) {
    return addProduct(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loadCart,
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(UpdateCartRequestModel request)? updateCart,
    TResult? Function(int productId, int newQuantity)? updateQuantity,
  }) {
    return addProduct?.call(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loadCart,
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(UpdateCartRequestModel request)? updateCart,
    TResult Function(int productId, int newQuantity)? updateQuantity,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(id, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCart,
    required TResult Function(AddProductEvent value) addProduct,
    required TResult Function(UpdateCartEvent value) updateCart,
    required TResult Function(UpdateProductQuantityEvent value) updateQuantity,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartEvent value)? loadCart,
    TResult? Function(AddProductEvent value)? addProduct,
    TResult? Function(UpdateCartEvent value)? updateCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateQuantity,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCart,
    TResult Function(AddProductEvent value)? addProduct,
    TResult Function(UpdateCartEvent value)? updateCart,
    TResult Function(UpdateProductQuantityEvent value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class AddProductEvent implements CartEvent {
  const factory AddProductEvent(final int id, final int quantity) =
      _$AddProductEventImpl;

  int get id;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddProductEventImplCopyWith<_$AddProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartEventImplCopyWith<$Res> {
  factory _$$UpdateCartEventImplCopyWith(_$UpdateCartEventImpl value,
          $Res Function(_$UpdateCartEventImpl) then) =
      __$$UpdateCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateCartRequestModel request});
}

/// @nodoc
class __$$UpdateCartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartEventImpl>
    implements _$$UpdateCartEventImplCopyWith<$Res> {
  __$$UpdateCartEventImplCopyWithImpl(
      _$UpdateCartEventImpl _value, $Res Function(_$UpdateCartEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$UpdateCartEventImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UpdateCartRequestModel,
    ));
  }
}

/// @nodoc

class _$UpdateCartEventImpl implements UpdateCartEvent {
  const _$UpdateCartEventImpl(this.request);

  @override
  final UpdateCartRequestModel request;

  @override
  String toString() {
    return 'CartEvent.updateCart(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartEventImplCopyWith<_$UpdateCartEventImpl> get copyWith =>
      __$$UpdateCartEventImplCopyWithImpl<_$UpdateCartEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loadCart,
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(UpdateCartRequestModel request) updateCart,
    required TResult Function(int productId, int newQuantity) updateQuantity,
  }) {
    return updateCart(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loadCart,
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(UpdateCartRequestModel request)? updateCart,
    TResult? Function(int productId, int newQuantity)? updateQuantity,
  }) {
    return updateCart?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loadCart,
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(UpdateCartRequestModel request)? updateCart,
    TResult Function(int productId, int newQuantity)? updateQuantity,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCart,
    required TResult Function(AddProductEvent value) addProduct,
    required TResult Function(UpdateCartEvent value) updateCart,
    required TResult Function(UpdateProductQuantityEvent value) updateQuantity,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartEvent value)? loadCart,
    TResult? Function(AddProductEvent value)? addProduct,
    TResult? Function(UpdateCartEvent value)? updateCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateQuantity,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCart,
    TResult Function(AddProductEvent value)? addProduct,
    TResult Function(UpdateCartEvent value)? updateCart,
    TResult Function(UpdateProductQuantityEvent value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class UpdateCartEvent implements CartEvent {
  const factory UpdateCartEvent(final UpdateCartRequestModel request) =
      _$UpdateCartEventImpl;

  UpdateCartRequestModel get request;
  @JsonKey(ignore: true)
  _$$UpdateCartEventImplCopyWith<_$UpdateCartEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductQuantityEventImplCopyWith<$Res> {
  factory _$$UpdateProductQuantityEventImplCopyWith(
          _$UpdateProductQuantityEventImpl value,
          $Res Function(_$UpdateProductQuantityEventImpl) then) =
      __$$UpdateProductQuantityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId, int newQuantity});
}

/// @nodoc
class __$$UpdateProductQuantityEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateProductQuantityEventImpl>
    implements _$$UpdateProductQuantityEventImplCopyWith<$Res> {
  __$$UpdateProductQuantityEventImplCopyWithImpl(
      _$UpdateProductQuantityEventImpl _value,
      $Res Function(_$UpdateProductQuantityEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? newQuantity = null,
  }) {
    return _then(_$UpdateProductQuantityEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      null == newQuantity
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateProductQuantityEventImpl implements UpdateProductQuantityEvent {
  const _$UpdateProductQuantityEventImpl(this.productId, this.newQuantity);

  @override
  final int productId;
  @override
  final int newQuantity;

  @override
  String toString() {
    return 'CartEvent.updateQuantity(productId: $productId, newQuantity: $newQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductQuantityEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.newQuantity, newQuantity) ||
                other.newQuantity == newQuantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, newQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductQuantityEventImplCopyWith<_$UpdateProductQuantityEventImpl>
      get copyWith => __$$UpdateProductQuantityEventImplCopyWithImpl<
          _$UpdateProductQuantityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId) loadCart,
    required TResult Function(int id, int quantity) addProduct,
    required TResult Function(UpdateCartRequestModel request) updateCart,
    required TResult Function(int productId, int newQuantity) updateQuantity,
  }) {
    return updateQuantity(productId, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int userId)? loadCart,
    TResult? Function(int id, int quantity)? addProduct,
    TResult? Function(UpdateCartRequestModel request)? updateCart,
    TResult? Function(int productId, int newQuantity)? updateQuantity,
  }) {
    return updateQuantity?.call(productId, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId)? loadCart,
    TResult Function(int id, int quantity)? addProduct,
    TResult Function(UpdateCartRequestModel request)? updateCart,
    TResult Function(int productId, int newQuantity)? updateQuantity,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(productId, newQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartEvent value) loadCart,
    required TResult Function(AddProductEvent value) addProduct,
    required TResult Function(UpdateCartEvent value) updateCart,
    required TResult Function(UpdateProductQuantityEvent value) updateQuantity,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartEvent value)? loadCart,
    TResult? Function(AddProductEvent value)? addProduct,
    TResult? Function(UpdateCartEvent value)? updateCart,
    TResult? Function(UpdateProductQuantityEvent value)? updateQuantity,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartEvent value)? loadCart,
    TResult Function(AddProductEvent value)? addProduct,
    TResult Function(UpdateCartEvent value)? updateCart,
    TResult Function(UpdateProductQuantityEvent value)? updateQuantity,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class UpdateProductQuantityEvent implements CartEvent {
  const factory UpdateProductQuantityEvent(
          final int productId, final int newQuantity) =
      _$UpdateProductQuantityEventImpl;

  int get productId;
  int get newQuantity;
  @JsonKey(ignore: true)
  _$$UpdateProductQuantityEventImplCopyWith<_$UpdateProductQuantityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
