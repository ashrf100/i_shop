import 'package:dartz/dartz.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';

abstract class CartRepository {
  Future<Either<AppException, AppCart>> getCartByUser(int userId);

  Future<Either<AppException, AppCart>> addCart(AddCartRequestModel request );

  Future<Either<AppException, AppCart>> updateCart(int cartId, UpdateCartRequestModel request);

}
