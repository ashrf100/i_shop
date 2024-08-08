import 'package:i_shop/features/products/data/models/products_model.dart';

class AppProduct {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<String> tags;
  final String brand;
  final String sku;
  final int weight;
  final String warrantyInformation;
  final String shippingInformation;
  final String availabilityStatus;
  final List<Review> reviews;
  final String returnPolicy;
  final int minimumOrderQuantity;
  final List<String> images;
  final String thumbnail;

  AppProduct({
    this.id = 0,
    this.title = '',
    this.description = '',
    this.category = '',
    this.price = 0.0,
    this.discountPercentage = 0.0,
    this.rating = 0.0,
    this.stock = 0,
    this.tags = const [],
    this.brand = '',
    this.sku = '',
    this.weight = 0,
    this.warrantyInformation = '',
    this.shippingInformation = '',
    this.availabilityStatus = '',
    this.reviews = const [],
    this.returnPolicy = '',
    this.minimumOrderQuantity = 0,
    this.images = const [],
    this.thumbnail = '',
  });

  // Convert ProductModel to AppProduct
  factory AppProduct.fromProductModel(ProductModel productModel) {
    return AppProduct(
      id: productModel.id,
      title: productModel.title,
      description: productModel.description,
      category: productModel.category!,
      price: productModel.price,
      discountPercentage: productModel.discountPercentage,
      rating: productModel.rating,
      stock: productModel.stock,
      tags: List<String>.from(productModel.tags),
      brand: productModel.brand!,
      sku: productModel.sku!,
      weight: productModel.weight,
      warrantyInformation: productModel.warrantyInformation!,
      shippingInformation: productModel.shippingInformation!,
      availabilityStatus: productModel.availabilityStatus!,
      reviews: productModel.reviews,
      returnPolicy: productModel.returnPolicy!,
      minimumOrderQuantity: productModel.minimumOrderQuantity,
      images: List<String>.from(productModel.images),
      thumbnail: productModel.thumbnail!,
    );
  }
}
