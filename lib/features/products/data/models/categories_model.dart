import 'package:json_annotation/json_annotation.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
part 'categories_model.g.dart'; 

@JsonSerializable()
class CategoriesResponse {
  final String slug;
  final String name;
  final String url;

  CategoriesResponse({
    required this.slug,
    required this.name,
    required this.url,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);

  AppCategory toAppCategory() {
    return AppCategory(title: this.name);
  }

  static List<AppCategory> convertToAppCategories(
      List<CategoriesResponse> categories) {
    return categories.map((category) => category.toAppCategory()).toList();
  }
}
