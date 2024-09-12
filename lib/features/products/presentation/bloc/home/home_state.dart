import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_shop/core/enum/sort_enum.dart';
import 'package:i_shop/features/products/domain/entities/app_category.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = LoadingHomeState;
  const factory HomeState.error(String msg) = ErrorHomeState;
  const factory HomeState.init(
      {required List<AppProduct> products,
      required List<AppCategory> categories}) = InitHomeState;

  const factory HomeState.productsLoading() = ProductsLoadingState;
  const factory HomeState.products(
      List<AppProduct> products, List<AppCategory> categories) = ProductsState;
  const factory HomeState.productsError(
      {required String msg,
      AppCategory? category,
      String? searchText,
      SortBy? sortBy,
      Sortorder? order}) = ProductsErrorState;
}
