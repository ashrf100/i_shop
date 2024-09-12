// cart_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.init() = CartInitState;
  const factory CartState.loading() = CartLoadingState;
  const factory CartState.loaded(AppCart cart) = CartLoadedState;
  const factory CartState.error(String message) = CartErrorState;
}
