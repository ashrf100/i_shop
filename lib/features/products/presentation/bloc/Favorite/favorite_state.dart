import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = InitialFavoritesState;
  const factory FavoritesState.loading() = LoadingFavoritesState;
  const factory FavoritesState.loaded(List<AppProduct> favorites) =
      LoadedFavoritesState;
  const factory FavoritesState.error(String message) = ErrorFavoritesState;
}
