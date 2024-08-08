// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() products,
    required TResult Function(AppCategory category, int selectedIndex)
        productsByCategory,
    required TResult Function(String searchText) productsBySearch,
    required TResult Function(SortBy sortBy, Sortorder order) productsBySort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? products,
    TResult? Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult? Function(String searchText)? productsBySearch,
    TResult? Function(SortBy sortBy, Sortorder order)? productsBySort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? products,
    TResult Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult Function(String searchText)? productsBySearch,
    TResult Function(SortBy sortBy, Sortorder order)? productsBySort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(ProductsEvent value) products,
    required TResult Function(ProductsByCategoryEvent value) productsByCategory,
    required TResult Function(ProductsBySearchEvent value) productsBySearch,
    required TResult Function(ProductsBySortEvent value) productsBySort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(ProductsEvent value)? products,
    TResult? Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult? Function(ProductsBySearchEvent value)? productsBySearch,
    TResult? Function(ProductsBySortEvent value)? productsBySort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(ProductsEvent value)? products,
    TResult Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult Function(ProductsBySearchEvent value)? productsBySearch,
    TResult Function(ProductsBySortEvent value)? productsBySort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeInitEventImplCopyWith<$Res> {
  factory _$$HomeInitEventImplCopyWith(
          _$HomeInitEventImpl value, $Res Function(_$HomeInitEventImpl) then) =
      __$$HomeInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeInitEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeInitEventImpl>
    implements _$$HomeInitEventImplCopyWith<$Res> {
  __$$HomeInitEventImplCopyWithImpl(
      _$HomeInitEventImpl _value, $Res Function(_$HomeInitEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeInitEventImpl implements HomeInitEvent {
  const _$HomeInitEventImpl();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() products,
    required TResult Function(AppCategory category, int selectedIndex)
        productsByCategory,
    required TResult Function(String searchText) productsBySearch,
    required TResult Function(SortBy sortBy, Sortorder order) productsBySort,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? products,
    TResult? Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult? Function(String searchText)? productsBySearch,
    TResult? Function(SortBy sortBy, Sortorder order)? productsBySort,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? products,
    TResult Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult Function(String searchText)? productsBySearch,
    TResult Function(SortBy sortBy, Sortorder order)? productsBySort,
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
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(ProductsEvent value) products,
    required TResult Function(ProductsByCategoryEvent value) productsByCategory,
    required TResult Function(ProductsBySearchEvent value) productsBySearch,
    required TResult Function(ProductsBySortEvent value) productsBySort,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(ProductsEvent value)? products,
    TResult? Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult? Function(ProductsBySearchEvent value)? productsBySearch,
    TResult? Function(ProductsBySortEvent value)? productsBySort,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(ProductsEvent value)? products,
    TResult Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult Function(ProductsBySearchEvent value)? productsBySearch,
    TResult Function(ProductsBySortEvent value)? productsBySort,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeInitEvent implements HomeEvent {
  const factory HomeInitEvent() = _$HomeInitEventImpl;
}

/// @nodoc
abstract class _$$ProductsEventImplCopyWith<$Res> {
  factory _$$ProductsEventImplCopyWith(
          _$ProductsEventImpl value, $Res Function(_$ProductsEventImpl) then) =
      __$$ProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ProductsEventImpl>
    implements _$$ProductsEventImplCopyWith<$Res> {
  __$$ProductsEventImplCopyWithImpl(
      _$ProductsEventImpl _value, $Res Function(_$ProductsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsEventImpl implements ProductsEvent {
  const _$ProductsEventImpl();

  @override
  String toString() {
    return 'HomeEvent.products()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() products,
    required TResult Function(AppCategory category, int selectedIndex)
        productsByCategory,
    required TResult Function(String searchText) productsBySearch,
    required TResult Function(SortBy sortBy, Sortorder order) productsBySort,
  }) {
    return products();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? products,
    TResult? Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult? Function(String searchText)? productsBySearch,
    TResult? Function(SortBy sortBy, Sortorder order)? productsBySort,
  }) {
    return products?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? products,
    TResult Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult Function(String searchText)? productsBySearch,
    TResult Function(SortBy sortBy, Sortorder order)? productsBySort,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(ProductsEvent value) products,
    required TResult Function(ProductsByCategoryEvent value) productsByCategory,
    required TResult Function(ProductsBySearchEvent value) productsBySearch,
    required TResult Function(ProductsBySortEvent value) productsBySort,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(ProductsEvent value)? products,
    TResult? Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult? Function(ProductsBySearchEvent value)? productsBySearch,
    TResult? Function(ProductsBySortEvent value)? productsBySort,
  }) {
    return products?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(ProductsEvent value)? products,
    TResult Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult Function(ProductsBySearchEvent value)? productsBySearch,
    TResult Function(ProductsBySortEvent value)? productsBySort,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class ProductsEvent implements HomeEvent {
  const factory ProductsEvent() = _$ProductsEventImpl;
}

/// @nodoc
abstract class _$$ProductsByCategoryEventImplCopyWith<$Res> {
  factory _$$ProductsByCategoryEventImplCopyWith(
          _$ProductsByCategoryEventImpl value,
          $Res Function(_$ProductsByCategoryEventImpl) then) =
      __$$ProductsByCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppCategory category, int selectedIndex});

  $AppCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$ProductsByCategoryEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ProductsByCategoryEventImpl>
    implements _$$ProductsByCategoryEventImplCopyWith<$Res> {
  __$$ProductsByCategoryEventImplCopyWithImpl(
      _$ProductsByCategoryEventImpl _value,
      $Res Function(_$ProductsByCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$ProductsByCategoryEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as AppCategory,
      null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCategoryCopyWith<$Res> get category {
    return $AppCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc

class _$ProductsByCategoryEventImpl implements ProductsByCategoryEvent {
  const _$ProductsByCategoryEventImpl(this.category, this.selectedIndex);

  @override
  final AppCategory category;
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'HomeEvent.productsByCategory(category: $category, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsByCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsByCategoryEventImplCopyWith<_$ProductsByCategoryEventImpl>
      get copyWith => __$$ProductsByCategoryEventImplCopyWithImpl<
          _$ProductsByCategoryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() products,
    required TResult Function(AppCategory category, int selectedIndex)
        productsByCategory,
    required TResult Function(String searchText) productsBySearch,
    required TResult Function(SortBy sortBy, Sortorder order) productsBySort,
  }) {
    return productsByCategory(category, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? products,
    TResult? Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult? Function(String searchText)? productsBySearch,
    TResult? Function(SortBy sortBy, Sortorder order)? productsBySort,
  }) {
    return productsByCategory?.call(category, selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? products,
    TResult Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult Function(String searchText)? productsBySearch,
    TResult Function(SortBy sortBy, Sortorder order)? productsBySort,
    required TResult orElse(),
  }) {
    if (productsByCategory != null) {
      return productsByCategory(category, selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(ProductsEvent value) products,
    required TResult Function(ProductsByCategoryEvent value) productsByCategory,
    required TResult Function(ProductsBySearchEvent value) productsBySearch,
    required TResult Function(ProductsBySortEvent value) productsBySort,
  }) {
    return productsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(ProductsEvent value)? products,
    TResult? Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult? Function(ProductsBySearchEvent value)? productsBySearch,
    TResult? Function(ProductsBySortEvent value)? productsBySort,
  }) {
    return productsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(ProductsEvent value)? products,
    TResult Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult Function(ProductsBySearchEvent value)? productsBySearch,
    TResult Function(ProductsBySortEvent value)? productsBySort,
    required TResult orElse(),
  }) {
    if (productsByCategory != null) {
      return productsByCategory(this);
    }
    return orElse();
  }
}

abstract class ProductsByCategoryEvent implements HomeEvent {
  const factory ProductsByCategoryEvent(
          final AppCategory category, final int selectedIndex) =
      _$ProductsByCategoryEventImpl;

  AppCategory get category;
  int get selectedIndex;
  @JsonKey(ignore: true)
  _$$ProductsByCategoryEventImplCopyWith<_$ProductsByCategoryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsBySearchEventImplCopyWith<$Res> {
  factory _$$ProductsBySearchEventImplCopyWith(
          _$ProductsBySearchEventImpl value,
          $Res Function(_$ProductsBySearchEventImpl) then) =
      __$$ProductsBySearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$ProductsBySearchEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ProductsBySearchEventImpl>
    implements _$$ProductsBySearchEventImplCopyWith<$Res> {
  __$$ProductsBySearchEventImplCopyWithImpl(_$ProductsBySearchEventImpl _value,
      $Res Function(_$ProductsBySearchEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$ProductsBySearchEventImpl(
      null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsBySearchEventImpl implements ProductsBySearchEvent {
  const _$ProductsBySearchEventImpl(this.searchText);

  @override
  final String searchText;

  @override
  String toString() {
    return 'HomeEvent.productsBySearch(searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsBySearchEventImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsBySearchEventImplCopyWith<_$ProductsBySearchEventImpl>
      get copyWith => __$$ProductsBySearchEventImplCopyWithImpl<
          _$ProductsBySearchEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() products,
    required TResult Function(AppCategory category, int selectedIndex)
        productsByCategory,
    required TResult Function(String searchText) productsBySearch,
    required TResult Function(SortBy sortBy, Sortorder order) productsBySort,
  }) {
    return productsBySearch(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? products,
    TResult? Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult? Function(String searchText)? productsBySearch,
    TResult? Function(SortBy sortBy, Sortorder order)? productsBySort,
  }) {
    return productsBySearch?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? products,
    TResult Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult Function(String searchText)? productsBySearch,
    TResult Function(SortBy sortBy, Sortorder order)? productsBySort,
    required TResult orElse(),
  }) {
    if (productsBySearch != null) {
      return productsBySearch(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(ProductsEvent value) products,
    required TResult Function(ProductsByCategoryEvent value) productsByCategory,
    required TResult Function(ProductsBySearchEvent value) productsBySearch,
    required TResult Function(ProductsBySortEvent value) productsBySort,
  }) {
    return productsBySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(ProductsEvent value)? products,
    TResult? Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult? Function(ProductsBySearchEvent value)? productsBySearch,
    TResult? Function(ProductsBySortEvent value)? productsBySort,
  }) {
    return productsBySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(ProductsEvent value)? products,
    TResult Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult Function(ProductsBySearchEvent value)? productsBySearch,
    TResult Function(ProductsBySortEvent value)? productsBySort,
    required TResult orElse(),
  }) {
    if (productsBySearch != null) {
      return productsBySearch(this);
    }
    return orElse();
  }
}

abstract class ProductsBySearchEvent implements HomeEvent {
  const factory ProductsBySearchEvent(final String searchText) =
      _$ProductsBySearchEventImpl;

  String get searchText;
  @JsonKey(ignore: true)
  _$$ProductsBySearchEventImplCopyWith<_$ProductsBySearchEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsBySortEventImplCopyWith<$Res> {
  factory _$$ProductsBySortEventImplCopyWith(_$ProductsBySortEventImpl value,
          $Res Function(_$ProductsBySortEventImpl) then) =
      __$$ProductsBySortEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SortBy sortBy, Sortorder order});
}

/// @nodoc
class __$$ProductsBySortEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ProductsBySortEventImpl>
    implements _$$ProductsBySortEventImplCopyWith<$Res> {
  __$$ProductsBySortEventImplCopyWithImpl(_$ProductsBySortEventImpl _value,
      $Res Function(_$ProductsBySortEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
    Object? order = null,
  }) {
    return _then(_$ProductsBySortEventImpl(
      null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Sortorder,
    ));
  }
}

/// @nodoc

class _$ProductsBySortEventImpl implements ProductsBySortEvent {
  const _$ProductsBySortEventImpl(this.sortBy, this.order);

  @override
  final SortBy sortBy;
  @override
  final Sortorder order;

  @override
  String toString() {
    return 'HomeEvent.productsBySort(sortBy: $sortBy, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsBySortEventImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsBySortEventImplCopyWith<_$ProductsBySortEventImpl> get copyWith =>
      __$$ProductsBySortEventImplCopyWithImpl<_$ProductsBySortEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() products,
    required TResult Function(AppCategory category, int selectedIndex)
        productsByCategory,
    required TResult Function(String searchText) productsBySearch,
    required TResult Function(SortBy sortBy, Sortorder order) productsBySort,
  }) {
    return productsBySort(sortBy, order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? products,
    TResult? Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult? Function(String searchText)? productsBySearch,
    TResult? Function(SortBy sortBy, Sortorder order)? productsBySort,
  }) {
    return productsBySort?.call(sortBy, order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? products,
    TResult Function(AppCategory category, int selectedIndex)?
        productsByCategory,
    TResult Function(String searchText)? productsBySearch,
    TResult Function(SortBy sortBy, Sortorder order)? productsBySort,
    required TResult orElse(),
  }) {
    if (productsBySort != null) {
      return productsBySort(sortBy, order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitEvent value) init,
    required TResult Function(ProductsEvent value) products,
    required TResult Function(ProductsByCategoryEvent value) productsByCategory,
    required TResult Function(ProductsBySearchEvent value) productsBySearch,
    required TResult Function(ProductsBySortEvent value) productsBySort,
  }) {
    return productsBySort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitEvent value)? init,
    TResult? Function(ProductsEvent value)? products,
    TResult? Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult? Function(ProductsBySearchEvent value)? productsBySearch,
    TResult? Function(ProductsBySortEvent value)? productsBySort,
  }) {
    return productsBySort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitEvent value)? init,
    TResult Function(ProductsEvent value)? products,
    TResult Function(ProductsByCategoryEvent value)? productsByCategory,
    TResult Function(ProductsBySearchEvent value)? productsBySearch,
    TResult Function(ProductsBySortEvent value)? productsBySort,
    required TResult orElse(),
  }) {
    if (productsBySort != null) {
      return productsBySort(this);
    }
    return orElse();
  }
}

abstract class ProductsBySortEvent implements HomeEvent {
  const factory ProductsBySortEvent(
      final SortBy sortBy, final Sortorder order) = _$ProductsBySortEventImpl;

  SortBy get sortBy;
  Sortorder get order;
  @JsonKey(ignore: true)
  _$$ProductsBySortEventImplCopyWith<_$ProductsBySortEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
