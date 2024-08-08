import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_category.freezed.dart';

@freezed
class AppCategory with _$AppCategory {
  const factory AppCategory({String? title}) = _AppCategory;
}
