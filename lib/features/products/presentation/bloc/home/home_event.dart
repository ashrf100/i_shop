import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = HomeInitEvent;
  const factory HomeEvent.products() = ProductsEvent;

  const factory HomeEvent.productsByCategory(
      AppCategory category, int selectedIndex) = ProductsByCategoryEvent;
  const factory HomeEvent.productsBySearch(String searchText) =
      ProductsBySearchEvent;
  const factory HomeEvent.productsBySort(SortBy sortBy, Sortorder order) =
      ProductsBySortEvent;
}
