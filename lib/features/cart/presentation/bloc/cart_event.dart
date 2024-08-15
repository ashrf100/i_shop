// cart_event.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';

part 'cart_event.freezed.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loadCart(int userId) = LoadCartEvent;
  const factory CartEvent.addProduct(int id, int quantity) = AddProductEvent;
  const factory CartEvent.updateCart(UpdateCartRequestModel request) =
      UpdateCartEvent;
  const factory CartEvent.updateQuantity(int productId, int newQuantity) =
      UpdateProductQuantityEvent;
}
