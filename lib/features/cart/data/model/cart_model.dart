import 'package:json_annotation/json_annotation.dart';

part 'cart_model.g.dart';

@JsonSerializable()
class CartResponseModel {
  @JsonKey(name: 'carts')
  final List<CartModel> carts;

  @JsonKey(name: 'total')
  final int total;

  @JsonKey(name: 'skip')
  final int skip;

  @JsonKey(name: 'limit')
  final int limit;

  CartResponseModel({
    required this.carts,
    required this.total,
    required this.skip,
    required this.limit,
  });

  factory CartResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CartResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartResponseModelToJson(this);
}

@JsonSerializable()
class CartModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'products')
  final List<CartProductModel> products;

  @JsonKey(name: 'total')
  final double total;

  @JsonKey(name: 'discountedTotal')
  final double discountedTotal;

  @JsonKey(name: 'userId')
  final int userId;

  @JsonKey(name: 'totalProducts')
  final int totalProducts;

  @JsonKey(name: 'totalQuantity')
  final int totalQuantity;

  CartModel({
    required this.id,
    required this.products,
    required this.total,
    required this.discountedTotal,
    required this.userId,
    required this.totalProducts,
    required this.totalQuantity,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}

@JsonSerializable()
class CartProductModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'price')
  final double price;

  @JsonKey(name: 'quantity')
  final int quantity;

  @JsonKey(name: 'total')
  final double total;

  @JsonKey(name: 'discountPercentage')
  final double discountPercentage;

  @JsonKey(name: 'discountedTotal', defaultValue: 0)
  final double discountedTotal;

  @JsonKey(name: 'discountedPrice', defaultValue: 0)
  final double discountedPrice;
  @JsonKey(name: 'thumbnail')
  final String thumbnail;

  CartProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.total,
    required this.discountPercentage,
    required this.discountedTotal,
    required this.discountedPrice,
    required this.thumbnail,
  });

  factory CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartProductModelToJson(this);
}
