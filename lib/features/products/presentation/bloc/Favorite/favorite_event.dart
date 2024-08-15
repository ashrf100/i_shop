import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';

part 'favorite_event.freezed.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.addFavorite(AppProduct appProduct) =
      AddFavoriteEvent;
  const factory FavoritesEvent.removeFavorite(String id) = RemoveFavoriteEvent;
  const factory FavoritesEvent.loadFavorites() = LoadFavoritesEvent;
}
