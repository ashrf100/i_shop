// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(
            List<AppProduct> products, List<AppCategory> categories)
        init,
    required TResult Function() productsLoading,
    required TResult Function(List<AppProduct> products) products,
    required TResult Function(String msg, AppCategory? category,
            String? searchText, SortBy? sortBy, Sortorder? order)
        productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult? Function()? productsLoading,
    TResult? Function(List<AppProduct> products)? products,
    TResult? Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult Function()? productsLoading,
    TResult Function(List<AppProduct> products)? products,
    TResult Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(ErrorHomeState value) error,
    required TResult Function(InitHomeState value) init,
    required TResult Function(ProductsLoadingState value) productsLoading,
    required TResult Function(ProductsState value) products,
    required TResult Function(ProductsErrorState value) productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(ErrorHomeState value)? error,
    TResult? Function(InitHomeState value)? init,
    TResult? Function(ProductsLoadingState value)? productsLoading,
    TResult? Function(ProductsState value)? products,
    TResult? Function(ProductsErrorState value)? productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(ErrorHomeState value)? error,
    TResult Function(InitHomeState value)? init,
    TResult Function(ProductsLoadingState value)? productsLoading,
    TResult Function(ProductsState value)? products,
    TResult Function(ProductsErrorState value)? productsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingHomeStateImplCopyWith<$Res> {
  factory _$$LoadingHomeStateImplCopyWith(_$LoadingHomeStateImpl value,
          $Res Function(_$LoadingHomeStateImpl) then) =
      __$$LoadingHomeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeStateImpl>
    implements _$$LoadingHomeStateImplCopyWith<$Res> {
  __$$LoadingHomeStateImplCopyWithImpl(_$LoadingHomeStateImpl _value,
      $Res Function(_$LoadingHomeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingHomeStateImpl implements LoadingHomeState {
  const _$LoadingHomeStateImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(
            List<AppProduct> products, List<AppCategory> categories)
        init,
    required TResult Function() productsLoading,
    required TResult Function(List<AppProduct> products) products,
    required TResult Function(String msg, AppCategory? category,
            String? searchText, SortBy? sortBy, Sortorder? order)
        productsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult? Function()? productsLoading,
    TResult? Function(List<AppProduct> products)? products,
    TResult? Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult Function()? productsLoading,
    TResult Function(List<AppProduct> products)? products,
    TResult Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
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
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(ErrorHomeState value) error,
    required TResult Function(InitHomeState value) init,
    required TResult Function(ProductsLoadingState value) productsLoading,
    required TResult Function(ProductsState value) products,
    required TResult Function(ProductsErrorState value) productsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(ErrorHomeState value)? error,
    TResult? Function(InitHomeState value)? init,
    TResult? Function(ProductsLoadingState value)? productsLoading,
    TResult? Function(ProductsState value)? products,
    TResult? Function(ProductsErrorState value)? productsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(ErrorHomeState value)? error,
    TResult Function(InitHomeState value)? init,
    TResult Function(ProductsLoadingState value)? productsLoading,
    TResult Function(ProductsState value)? products,
    TResult Function(ProductsErrorState value)? productsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingHomeState implements HomeState {
  const factory LoadingHomeState() = _$LoadingHomeStateImpl;
}

/// @nodoc
abstract class _$$ErrorHomeStateImplCopyWith<$Res> {
  factory _$$ErrorHomeStateImplCopyWith(_$ErrorHomeStateImpl value,
          $Res Function(_$ErrorHomeStateImpl) then) =
      __$$ErrorHomeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ErrorHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorHomeStateImpl>
    implements _$$ErrorHomeStateImplCopyWith<$Res> {
  __$$ErrorHomeStateImplCopyWithImpl(
      _$ErrorHomeStateImpl _value, $Res Function(_$ErrorHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ErrorHomeStateImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorHomeStateImpl implements ErrorHomeState {
  const _$ErrorHomeStateImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'HomeState.error(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHomeStateImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      __$$ErrorHomeStateImplCopyWithImpl<_$ErrorHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(
            List<AppProduct> products, List<AppCategory> categories)
        init,
    required TResult Function() productsLoading,
    required TResult Function(List<AppProduct> products) products,
    required TResult Function(String msg, AppCategory? category,
            String? searchText, SortBy? sortBy, Sortorder? order)
        productsError,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult? Function()? productsLoading,
    TResult? Function(List<AppProduct> products)? products,
    TResult? Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult Function()? productsLoading,
    TResult Function(List<AppProduct> products)? products,
    TResult Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(ErrorHomeState value) error,
    required TResult Function(InitHomeState value) init,
    required TResult Function(ProductsLoadingState value) productsLoading,
    required TResult Function(ProductsState value) products,
    required TResult Function(ProductsErrorState value) productsError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(ErrorHomeState value)? error,
    TResult? Function(InitHomeState value)? init,
    TResult? Function(ProductsLoadingState value)? productsLoading,
    TResult? Function(ProductsState value)? products,
    TResult? Function(ProductsErrorState value)? productsError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(ErrorHomeState value)? error,
    TResult Function(InitHomeState value)? init,
    TResult Function(ProductsLoadingState value)? productsLoading,
    TResult Function(ProductsState value)? products,
    TResult Function(ProductsErrorState value)? productsError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorHomeState implements HomeState {
  const factory ErrorHomeState(final String msg) = _$ErrorHomeStateImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitHomeStateImplCopyWith<$Res> {
  factory _$$InitHomeStateImplCopyWith(
          _$InitHomeStateImpl value, $Res Function(_$InitHomeStateImpl) then) =
      __$$InitHomeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppProduct> products, List<AppCategory> categories});
}

/// @nodoc
class __$$InitHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitHomeStateImpl>
    implements _$$InitHomeStateImplCopyWith<$Res> {
  __$$InitHomeStateImplCopyWithImpl(
      _$InitHomeStateImpl _value, $Res Function(_$InitHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? categories = null,
  }) {
    return _then(_$InitHomeStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AppProduct>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<AppCategory>,
    ));
  }
}

/// @nodoc

class _$InitHomeStateImpl implements InitHomeState {
  const _$InitHomeStateImpl(
      {required final List<AppProduct> products,
      required final List<AppCategory> categories})
      : _products = products,
        _categories = categories;

  final List<AppProduct> _products;
  @override
  List<AppProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<AppCategory> _categories;
  @override
  List<AppCategory> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'HomeState.init(products: $products, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitHomeStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitHomeStateImplCopyWith<_$InitHomeStateImpl> get copyWith =>
      __$$InitHomeStateImplCopyWithImpl<_$InitHomeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(
            List<AppProduct> products, List<AppCategory> categories)
        init,
    required TResult Function() productsLoading,
    required TResult Function(List<AppProduct> products) products,
    required TResult Function(String msg, AppCategory? category,
            String? searchText, SortBy? sortBy, Sortorder? order)
        productsError,
  }) {
    return init(this.products, categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult? Function()? productsLoading,
    TResult? Function(List<AppProduct> products)? products,
    TResult? Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
  }) {
    return init?.call(this.products, categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult Function()? productsLoading,
    TResult Function(List<AppProduct> products)? products,
    TResult Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this.products, categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(ErrorHomeState value) error,
    required TResult Function(InitHomeState value) init,
    required TResult Function(ProductsLoadingState value) productsLoading,
    required TResult Function(ProductsState value) products,
    required TResult Function(ProductsErrorState value) productsError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(ErrorHomeState value)? error,
    TResult? Function(InitHomeState value)? init,
    TResult? Function(ProductsLoadingState value)? productsLoading,
    TResult? Function(ProductsState value)? products,
    TResult? Function(ProductsErrorState value)? productsError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(ErrorHomeState value)? error,
    TResult Function(InitHomeState value)? init,
    TResult Function(ProductsLoadingState value)? productsLoading,
    TResult Function(ProductsState value)? products,
    TResult Function(ProductsErrorState value)? productsError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitHomeState implements HomeState {
  const factory InitHomeState(
      {required final List<AppProduct> products,
      required final List<AppCategory> categories}) = _$InitHomeStateImpl;

  List<AppProduct> get products;
  List<AppCategory> get categories;
  @JsonKey(ignore: true)
  _$$InitHomeStateImplCopyWith<_$InitHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsLoadingStateImplCopyWith<$Res> {
  factory _$$ProductsLoadingStateImplCopyWith(_$ProductsLoadingStateImpl value,
          $Res Function(_$ProductsLoadingStateImpl) then) =
      __$$ProductsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ProductsLoadingStateImpl>
    implements _$$ProductsLoadingStateImplCopyWith<$Res> {
  __$$ProductsLoadingStateImplCopyWithImpl(_$ProductsLoadingStateImpl _value,
      $Res Function(_$ProductsLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsLoadingStateImpl implements ProductsLoadingState {
  const _$ProductsLoadingStateImpl();

  @override
  String toString() {
    return 'HomeState.productsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(
            List<AppProduct> products, List<AppCategory> categories)
        init,
    required TResult Function() productsLoading,
    required TResult Function(List<AppProduct> products) products,
    required TResult Function(String msg, AppCategory? category,
            String? searchText, SortBy? sortBy, Sortorder? order)
        productsError,
  }) {
    return productsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult? Function()? productsLoading,
    TResult? Function(List<AppProduct> products)? products,
    TResult? Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
  }) {
    return productsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult Function()? productsLoading,
    TResult Function(List<AppProduct> products)? products,
    TResult Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(ErrorHomeState value) error,
    required TResult Function(InitHomeState value) init,
    required TResult Function(ProductsLoadingState value) productsLoading,
    required TResult Function(ProductsState value) products,
    required TResult Function(ProductsErrorState value) productsError,
  }) {
    return productsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(ErrorHomeState value)? error,
    TResult? Function(InitHomeState value)? init,
    TResult? Function(ProductsLoadingState value)? productsLoading,
    TResult? Function(ProductsState value)? products,
    TResult? Function(ProductsErrorState value)? productsError,
  }) {
    return productsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(ErrorHomeState value)? error,
    TResult Function(InitHomeState value)? init,
    TResult Function(ProductsLoadingState value)? productsLoading,
    TResult Function(ProductsState value)? products,
    TResult Function(ProductsErrorState value)? productsError,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoadingState implements HomeState {
  const factory ProductsLoadingState() = _$ProductsLoadingStateImpl;
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AppProduct> products});
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsStateImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<AppProduct>,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements ProductsState {
  const _$ProductsStateImpl(final List<AppProduct> products)
      : _products = products;

  final List<AppProduct> _products;
  @override
  List<AppProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'HomeState.products(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(
            List<AppProduct> products, List<AppCategory> categories)
        init,
    required TResult Function() productsLoading,
    required TResult Function(List<AppProduct> products) products,
    required TResult Function(String msg, AppCategory? category,
            String? searchText, SortBy? sortBy, Sortorder? order)
        productsError,
  }) {
    return products(this.products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult? Function()? productsLoading,
    TResult? Function(List<AppProduct> products)? products,
    TResult? Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
  }) {
    return products?.call(this.products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult Function()? productsLoading,
    TResult Function(List<AppProduct> products)? products,
    TResult Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this.products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(ErrorHomeState value) error,
    required TResult Function(InitHomeState value) init,
    required TResult Function(ProductsLoadingState value) productsLoading,
    required TResult Function(ProductsState value) products,
    required TResult Function(ProductsErrorState value) productsError,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(ErrorHomeState value)? error,
    TResult? Function(InitHomeState value)? init,
    TResult? Function(ProductsLoadingState value)? productsLoading,
    TResult? Function(ProductsState value)? products,
    TResult? Function(ProductsErrorState value)? productsError,
  }) {
    return products?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(ErrorHomeState value)? error,
    TResult Function(InitHomeState value)? init,
    TResult Function(ProductsLoadingState value)? productsLoading,
    TResult Function(ProductsState value)? products,
    TResult Function(ProductsErrorState value)? productsError,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class ProductsState implements HomeState {
  const factory ProductsState(final List<AppProduct> products) =
      _$ProductsStateImpl;

  List<AppProduct> get products;
  @JsonKey(ignore: true)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsErrorStateImplCopyWith<$Res> {
  factory _$$ProductsErrorStateImplCopyWith(_$ProductsErrorStateImpl value,
          $Res Function(_$ProductsErrorStateImpl) then) =
      __$$ProductsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String msg,
      AppCategory? category,
      String? searchText,
      SortBy? sortBy,
      Sortorder? order});

  $AppCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductsErrorStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ProductsErrorStateImpl>
    implements _$$ProductsErrorStateImplCopyWith<$Res> {
  __$$ProductsErrorStateImplCopyWithImpl(_$ProductsErrorStateImpl _value,
      $Res Function(_$ProductsErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? category = freezed,
    Object? searchText = freezed,
    Object? sortBy = freezed,
    Object? order = freezed,
  }) {
    return _then(_$ProductsErrorStateImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AppCategory?,
      searchText: freezed == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Sortorder?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $AppCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$ProductsErrorStateImpl implements ProductsErrorState {
  const _$ProductsErrorStateImpl(
      {required this.msg,
      this.category,
      this.searchText,
      this.sortBy,
      this.order});

  @override
  final String msg;
  @override
  final AppCategory? category;
  @override
  final String? searchText;
  @override
  final SortBy? sortBy;
  @override
  final Sortorder? order;

  @override
  String toString() {
    return 'HomeState.productsError(msg: $msg, category: $category, searchText: $searchText, sortBy: $sortBy, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsErrorStateImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, msg, category, searchText, sortBy, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsErrorStateImplCopyWith<_$ProductsErrorStateImpl> get copyWith =>
      __$$ProductsErrorStateImplCopyWithImpl<_$ProductsErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String msg) error,
    required TResult Function(
            List<AppProduct> products, List<AppCategory> categories)
        init,
    required TResult Function() productsLoading,
    required TResult Function(List<AppProduct> products) products,
    required TResult Function(String msg, AppCategory? category,
            String? searchText, SortBy? sortBy, Sortorder? order)
        productsError,
  }) {
    return productsError(msg, category, searchText, sortBy, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
    TResult? Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult? Function()? productsLoading,
    TResult? Function(List<AppProduct> products)? products,
    TResult? Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
  }) {
    return productsError?.call(msg, category, searchText, sortBy, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String msg)? error,
    TResult Function(List<AppProduct> products, List<AppCategory> categories)?
        init,
    TResult Function()? productsLoading,
    TResult Function(List<AppProduct> products)? products,
    TResult Function(String msg, AppCategory? category, String? searchText,
            SortBy? sortBy, Sortorder? order)?
        productsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(msg, category, searchText, sortBy, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingHomeState value) loading,
    required TResult Function(ErrorHomeState value) error,
    required TResult Function(InitHomeState value) init,
    required TResult Function(ProductsLoadingState value) productsLoading,
    required TResult Function(ProductsState value) products,
    required TResult Function(ProductsErrorState value) productsError,
  }) {
    return productsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingHomeState value)? loading,
    TResult? Function(ErrorHomeState value)? error,
    TResult? Function(InitHomeState value)? init,
    TResult? Function(ProductsLoadingState value)? productsLoading,
    TResult? Function(ProductsState value)? products,
    TResult? Function(ProductsErrorState value)? productsError,
  }) {
    return productsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingHomeState value)? loading,
    TResult Function(ErrorHomeState value)? error,
    TResult Function(InitHomeState value)? init,
    TResult Function(ProductsLoadingState value)? productsLoading,
    TResult Function(ProductsState value)? products,
    TResult Function(ProductsErrorState value)? productsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(this);
    }
    return orElse();
  }
}

abstract class ProductsErrorState implements HomeState {
  const factory ProductsErrorState(
      {required final String msg,
      final AppCategory? category,
      final String? searchText,
      final SortBy? sortBy,
      final Sortorder? order}) = _$ProductsErrorStateImpl;

  String get msg;
  AppCategory? get category;
  String? get searchText;
  SortBy? get sortBy;
  Sortorder? get order;
  @JsonKey(ignore: true)
  _$$ProductsErrorStateImplCopyWith<_$ProductsErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
