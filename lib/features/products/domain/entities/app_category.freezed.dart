// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppCategory {
  String? get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppCategoryCopyWith<AppCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCategoryCopyWith<$Res> {
  factory $AppCategoryCopyWith(
          AppCategory value, $Res Function(AppCategory) then) =
      _$AppCategoryCopyWithImpl<$Res, AppCategory>;
  @useResult
  $Res call({String? title});
}

/// @nodoc
class _$AppCategoryCopyWithImpl<$Res, $Val extends AppCategory>
    implements $AppCategoryCopyWith<$Res> {
  _$AppCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppCategoryImplCopyWith<$Res>
    implements $AppCategoryCopyWith<$Res> {
  factory _$$AppCategoryImplCopyWith(
          _$AppCategoryImpl value, $Res Function(_$AppCategoryImpl) then) =
      __$$AppCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title});
}

/// @nodoc
class __$$AppCategoryImplCopyWithImpl<$Res>
    extends _$AppCategoryCopyWithImpl<$Res, _$AppCategoryImpl>
    implements _$$AppCategoryImplCopyWith<$Res> {
  __$$AppCategoryImplCopyWithImpl(
      _$AppCategoryImpl _value, $Res Function(_$AppCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$AppCategoryImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppCategoryImpl implements _AppCategory {
  const _$AppCategoryImpl({this.title});

  @override
  final String? title;

  @override
  String toString() {
    return 'AppCategory(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppCategoryImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppCategoryImplCopyWith<_$AppCategoryImpl> get copyWith =>
      __$$AppCategoryImplCopyWithImpl<_$AppCategoryImpl>(this, _$identity);
}

abstract class _AppCategory implements AppCategory {
  const factory _AppCategory({final String? title}) = _$AppCategoryImpl;

  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$AppCategoryImplCopyWith<_$AppCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
