// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppProduct appProduct) addFavorite,
    required TResult Function(String id) removeFavorite,
    required TResult Function() loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppProduct appProduct)? addFavorite,
    TResult? Function(String id)? removeFavorite,
    TResult? Function()? loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppProduct appProduct)? addFavorite,
    TResult Function(String id)? removeFavorite,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
    required TResult Function(LoadFavoritesEvent value) loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavoriteEvent value)? addFavorite,
    TResult? Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult? Function(LoadFavoritesEvent value)? loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult Function(LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddFavoriteEventImplCopyWith<$Res> {
  factory _$$AddFavoriteEventImplCopyWith(_$AddFavoriteEventImpl value,
          $Res Function(_$AddFavoriteEventImpl) then) =
      __$$AddFavoriteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppProduct appProduct});
}

/// @nodoc
class __$$AddFavoriteEventImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$AddFavoriteEventImpl>
    implements _$$AddFavoriteEventImplCopyWith<$Res> {
  __$$AddFavoriteEventImplCopyWithImpl(_$AddFavoriteEventImpl _value,
      $Res Function(_$AddFavoriteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appProduct = null,
  }) {
    return _then(_$AddFavoriteEventImpl(
      null == appProduct
          ? _value.appProduct
          : appProduct // ignore: cast_nullable_to_non_nullable
              as AppProduct,
    ));
  }
}

/// @nodoc

class _$AddFavoriteEventImpl implements AddFavoriteEvent {
  const _$AddFavoriteEventImpl(this.appProduct);

  @override
  final AppProduct appProduct;

  @override
  String toString() {
    return 'FavoritesEvent.addFavorite(appProduct: $appProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteEventImpl &&
            (identical(other.appProduct, appProduct) ||
                other.appProduct == appProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteEventImplCopyWith<_$AddFavoriteEventImpl> get copyWith =>
      __$$AddFavoriteEventImplCopyWithImpl<_$AddFavoriteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppProduct appProduct) addFavorite,
    required TResult Function(String id) removeFavorite,
    required TResult Function() loadFavorites,
  }) {
    return addFavorite(appProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppProduct appProduct)? addFavorite,
    TResult? Function(String id)? removeFavorite,
    TResult? Function()? loadFavorites,
  }) {
    return addFavorite?.call(appProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppProduct appProduct)? addFavorite,
    TResult Function(String id)? removeFavorite,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(appProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
    required TResult Function(LoadFavoritesEvent value) loadFavorites,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavoriteEvent value)? addFavorite,
    TResult? Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult? Function(LoadFavoritesEvent value)? loadFavorites,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult Function(LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteEvent implements FavoritesEvent {
  const factory AddFavoriteEvent(final AppProduct appProduct) =
      _$AddFavoriteEventImpl;

  AppProduct get appProduct;
  @JsonKey(ignore: true)
  _$$AddFavoriteEventImplCopyWith<_$AddFavoriteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteEventImplCopyWith<$Res> {
  factory _$$RemoveFavoriteEventImplCopyWith(_$RemoveFavoriteEventImpl value,
          $Res Function(_$RemoveFavoriteEventImpl) then) =
      __$$RemoveFavoriteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$RemoveFavoriteEventImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveFavoriteEventImpl>
    implements _$$RemoveFavoriteEventImplCopyWith<$Res> {
  __$$RemoveFavoriteEventImplCopyWithImpl(_$RemoveFavoriteEventImpl _value,
      $Res Function(_$RemoveFavoriteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RemoveFavoriteEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteEventImpl implements RemoveFavoriteEvent {
  const _$RemoveFavoriteEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'FavoritesEvent.removeFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteEventImplCopyWith<_$RemoveFavoriteEventImpl> get copyWith =>
      __$$RemoveFavoriteEventImplCopyWithImpl<_$RemoveFavoriteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppProduct appProduct) addFavorite,
    required TResult Function(String id) removeFavorite,
    required TResult Function() loadFavorites,
  }) {
    return removeFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppProduct appProduct)? addFavorite,
    TResult? Function(String id)? removeFavorite,
    TResult? Function()? loadFavorites,
  }) {
    return removeFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppProduct appProduct)? addFavorite,
    TResult Function(String id)? removeFavorite,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
    required TResult Function(LoadFavoritesEvent value) loadFavorites,
  }) {
    return removeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavoriteEvent value)? addFavorite,
    TResult? Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult? Function(LoadFavoritesEvent value)? loadFavorites,
  }) {
    return removeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult Function(LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) {
    if (removeFavorite != null) {
      return removeFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteEvent implements FavoritesEvent {
  const factory RemoveFavoriteEvent(final String id) =
      _$RemoveFavoriteEventImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$RemoveFavoriteEventImplCopyWith<_$RemoveFavoriteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFavoritesEventImplCopyWith<$Res> {
  factory _$$LoadFavoritesEventImplCopyWith(_$LoadFavoritesEventImpl value,
          $Res Function(_$LoadFavoritesEventImpl) then) =
      __$$LoadFavoritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesEventImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$LoadFavoritesEventImpl>
    implements _$$LoadFavoritesEventImplCopyWith<$Res> {
  __$$LoadFavoritesEventImplCopyWithImpl(_$LoadFavoritesEventImpl _value,
      $Res Function(_$LoadFavoritesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadFavoritesEventImpl implements LoadFavoritesEvent {
  const _$LoadFavoritesEventImpl();

  @override
  String toString() {
    return 'FavoritesEvent.loadFavorites()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavoritesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppProduct appProduct) addFavorite,
    required TResult Function(String id) removeFavorite,
    required TResult Function() loadFavorites,
  }) {
    return loadFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppProduct appProduct)? addFavorite,
    TResult? Function(String id)? removeFavorite,
    TResult? Function()? loadFavorites,
  }) {
    return loadFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppProduct appProduct)? addFavorite,
    TResult Function(String id)? removeFavorite,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteEvent value) addFavorite,
    required TResult Function(RemoveFavoriteEvent value) removeFavorite,
    required TResult Function(LoadFavoritesEvent value) loadFavorites,
  }) {
    return loadFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddFavoriteEvent value)? addFavorite,
    TResult? Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult? Function(LoadFavoritesEvent value)? loadFavorites,
  }) {
    return loadFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteEvent value)? addFavorite,
    TResult Function(RemoveFavoriteEvent value)? removeFavorite,
    TResult Function(LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites(this);
    }
    return orElse();
  }
}

abstract class LoadFavoritesEvent implements FavoritesEvent {
  const factory LoadFavoritesEvent() = _$LoadFavoritesEventImpl;
}
