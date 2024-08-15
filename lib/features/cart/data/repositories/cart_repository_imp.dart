import 'package:dartz/dartz.dart';
import 'package:i_shop/core/error/app_exception.dart';
import 'package:i_shop/core/error/exceptions_errors.dart';
import 'package:i_shop/features/cart/data/datasources/cart_remote_data_source.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';
import 'package:i_shop/features/cart/domain/mapper/cart_mapper.dart';
import 'package:i_shop/features/cart/domain/repository/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource cartRemoteDataSource;

  CartRepositoryImpl({
    required this.cartRemoteDataSource,
  });

  @override
  Future<Either<AppException, AppCart>> getCartByUser(int userId) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }
      final cartResponse = await cartRemoteDataSource.getCartByUserId(userId);
      return Right(CartMapper.toAppCart(cartResponse.carts[0]));
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, AppCart>> addCart(
      AddCartRequestModel request) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }
      final cartResponse = await cartRemoteDataSource.addCart(request);
      return Right(CartMapper.toAppCart(cartResponse));
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }

  @override
  Future<Either<AppException, AppCart>> updateCart(
      int cartId, UpdateCartRequestModel request) async {
    try {
      bool hasInternet = await ErrorHandler.checkInternetConnection();
      if (!hasInternet) {
        return Left(NoInternetException());
      }

      final cartResponse =
          await cartRemoteDataSource.updateCart(cartId, request);

      if (cartResponse.products.isEmpty) {
        return Left(FetchDataException());
      }

      return Right(CartMapper.toAppCart(cartResponse));
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(FetchDataException());
    }
  }
}
