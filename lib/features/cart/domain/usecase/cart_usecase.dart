// cart_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';
import 'package:i_shop/features/cart/domain/repository/cart_repository.dart';

class GetCartByUserUseCase {
  final CartRepository repository;

  GetCartByUserUseCase(this.repository);

  Future<Either<AppException, AppCart>> call(int userId) {
    return repository.getCartByUser(userId);
  }
}

class AddProductToCartUseCase {
  final CartRepository repository;

  AddProductToCartUseCase(this.repository);

  Future<Either<AppException, AppCart>> call(int id, int quantity) {
    final request = AddCartRequestModel(
        products: [ProductRequestModel(id: id, quantity: quantity)], userId: 5);
    return repository.addCart(request);
  }
}

class UpdateCartUseCase {
  final CartRepository repository;

  UpdateCartUseCase(this.repository);

  Future<Either<AppException, AppCart>> call(
      int cartId, UpdateCartRequestModel request) {
    return repository.updateCart(cartId, request);
  }
}
