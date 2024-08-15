import 'package:json_annotation/json_annotation.dart';

part 'cart_request_model.g.dart';

// Model for product requests
@JsonSerializable()
class ProductRequestModel {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'quantity')
  final int quantity;

  ProductRequestModel({
    required this.id,
    required this.quantity,
  });

  factory ProductRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductRequestModelToJson(this);
}

// Model for adding a cart request
@JsonSerializable()
class AddCartRequestModel {
  @JsonKey(name: 'userId')
  final int userId;

  @JsonKey(name: 'products')
  final List<ProductRequestModel> products;

  AddCartRequestModel({
    required this.userId,
    required this.products,
  });

  factory AddCartRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddCartRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddCartRequestModelToJson(this);
}

// Model for updating a cart request
@JsonSerializable()
class UpdateCartRequestModel {
  @JsonKey(name: 'merge')
  final bool merge;

  @JsonKey(name: 'products')
  final List<ProductRequestModel> products;

  UpdateCartRequestModel({
    required this.merge,
    required this.products,
  });

  factory UpdateCartRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateCartRequestModelToJson(this);
}


