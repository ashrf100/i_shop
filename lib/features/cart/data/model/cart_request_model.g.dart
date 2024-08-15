// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequestModel _$ProductRequestModelFromJson(Map<String, dynamic> json) =>
    ProductRequestModel(
      id: (json['id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$ProductRequestModelToJson(
        ProductRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
    };

AddCartRequestModel _$AddCartRequestModelFromJson(Map<String, dynamic> json) =>
    AddCartRequestModel(
      userId: (json['userId'] as num).toInt(),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddCartRequestModelToJson(
        AddCartRequestModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'products': instance.products,
    };

UpdateCartRequestModel _$UpdateCartRequestModelFromJson(
        Map<String, dynamic> json) =>
    UpdateCartRequestModel(
      merge: json['merge'] as bool,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateCartRequestModelToJson(
        UpdateCartRequestModel instance) =>
    <String, dynamic>{
      'merge': instance.merge,
      'products': instance.products,
    };
