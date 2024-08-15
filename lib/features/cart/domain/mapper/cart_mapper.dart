import 'package:i_shop/features/cart/data/model/cart_model.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';

class CartMapper {
  static AppCart toAppCart(CartModel response) {
    return AppCart(
      id: response.id,
      products:
          (response.products ?? []).map((p) => toAppCartProduct(p)).toList(),
      total: response.total,
      discountedTotal: (response.discountedTotal).toDouble(),
      userId: response.userId,
      totalProducts: response.totalProducts,
      totalQuantity: response.totalQuantity,
    );
  }

  static AppCartProduct toAppCartProduct(CartProductModel response) {
    return AppCartProduct(
      id: response.id,
      title: response.title,
      price: response.price,
      quantity: response.quantity,
      total: response.total,
      discountPercentage: response.discountPercentage,
      discountedPrice: response.discountedTotal,
      thumbnail: response.thumbnail,
    );
  }

  static List<ProductRequestModel> toProductRequestModels(
      List<AppCartProduct> products) {
    return products
        .map((product) => ProductRequestModel(
              id: product.id,
              quantity: product.quantity,
            ))
        .toList();
  }
}
