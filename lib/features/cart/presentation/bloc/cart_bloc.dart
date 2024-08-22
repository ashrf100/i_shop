// cart_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';
import 'package:i_shop/features/cart/domain/mapper/cart_mapper.dart';
import 'package:i_shop/features/cart/domain/usecase/cart_usecase.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartByUserUseCase getCartByUserUseCase;
  final AddProductToCartUseCase addProductToCartUseCase;
  final UpdateCartUseCase updateCartUseCase;
  int userId = 50;
  int cartId = 45;

  AppCart? appCart;

  CartBloc({
    required this.getCartByUserUseCase,
    required this.addProductToCartUseCase,
    required this.updateCartUseCase,
  }) : super(const CartState.loading()) {
    on<LoadCartEvent>((event, emit) async {
      emit(const CartState.loading());

      final failureOrCart = await getCartByUserUseCase(event.userId);
      failureOrCart.fold(
        (failure) => emit(CartState.error(failure.message.toString())),
        (cart) {
          emit(CartState.loaded(cart));
          appCart = cart;
        },
      );
    });

    on<AddProductEvent>((event, emit) async {
      //   emit(const CartState.loading());

      final failureOrSuccess =
          await addProductToCartUseCase(event.id, event.quantity);

      failureOrSuccess
          .fold((failure) => emit(CartState.error(failure.message.toString())),
              (newappCart) {
        appCart = appCart?.merge(newappCart) ?? newappCart;
        emit(
          CartState.loaded(appCart!),
        );
      });
    });

    on<UpdateProductQuantityEvent>((event, emit) async {
      //   emit(const CartState.loading());

      final updatedProducts = appCart!.products.map((product) {
        if (product.id == event.productId) {
          return product.copyWith(quantity: event.newQuantity);
        }
        return product;
      }).toList();

      appCart = appCart!.copyWith(products: updatedProducts);

      final request = UpdateCartRequestModel(
        merge: true,
        products: CartMapper.toProductRequestModels(updatedProducts),
      );

      final failureOrSuccess = await updateCartUseCase(cartId, request);

      await failureOrSuccess.fold(
        (failure) async {
          emit(CartState.error(failure.message.toString()));
        },
        (cart) async {
          emit(CartState.loaded(cart));

    
        },
      );
    });
  }
}
