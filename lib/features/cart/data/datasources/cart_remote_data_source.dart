import 'package:i_shop/core/error/exceptions_errors.dart';
import 'package:i_shop/core/network/api_service.dart';
import 'package:i_shop/features/cart/data/model/cart_model.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';

abstract class CartRemoteDataSource {
  Future<CartResponseModel> getCartByUserId(int userId);
  Future<CartModel> addCart(AddCartRequestModel requestModel);
  Future<CartModel> updateCart(int cartId, UpdateCartRequestModel requestModel);
}

class CartRemoteDataSourceDio implements CartRemoteDataSource {
  final ApiService apiService;

  CartRemoteDataSourceDio({required this.apiService});

  @override
  Future<CartResponseModel> getCartByUserId(int userId) async {
    try {
      final response = await apiService.getCartsByUser(userId: userId);
      return response;
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<CartModel> addCart(AddCartRequestModel requestModel) async {
    try {
      final response = await apiService.addCart(requestModel);
      return response;
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }

  @override
  Future<CartModel> updateCart(
      int cartId, UpdateCartRequestModel requestModel) async {
    try {
      final response = await apiService.updateCart(
        cartId: cartId,
        request: requestModel,
      );

      return response;
    } catch (e) {
      ErrorHandler.handleError(e);
      rethrow;
    }
  }
}
