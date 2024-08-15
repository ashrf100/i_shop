import 'package:hive/hive.dart';
import 'package:i_shop/features/products/data/models/products_model.dart';
part 'app_product.g.dart';

@HiveType(typeId: 1)
class AppProduct {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final bool isFavorite;

  @HiveField(2)
  final String title;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final String category;

  @HiveField(5)
  final double price;

  @HiveField(6)
  final double discountPercentage;

  @HiveField(7)
  final double rating;

  @HiveField(8)
  final int stock;

  @HiveField(9)
  final List<String> tags;

  @HiveField(10)
  final String brand;

  @HiveField(11)
  final String sku;

  @HiveField(12)
  final int weight;

  @HiveField(13)
  final String warrantyInformation;

  @HiveField(14)
  final String shippingInformation;

  @HiveField(15)
  final String availabilityStatus;

  @HiveField(16)
  final List<Review> reviews; // Ensure Review is also annotated

  @HiveField(17)
  final String returnPolicy;

  @HiveField(18)
  final int minimumOrderQuantity;

  @HiveField(19)
  final List<String> images;

  @HiveField(20)
  final String thumbnail;

  AppProduct({
    this.id = 0,
    this.isFavorite = false,
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
      category: productModel.category,
      price: productModel.price,
      discountPercentage: productModel.discountPercentage,
      rating: productModel.rating,
      stock: productModel.stock,
      tags: List<String>.from(productModel.tags),
      brand: productModel.brand!,
      sku: productModel.sku,
      weight: productModel.weight,
      warrantyInformation: productModel.warrantyInformation,
      shippingInformation: productModel.shippingInformation,
      availabilityStatus: productModel.availabilityStatus,
      reviews: productModel.reviews,
      returnPolicy: productModel.returnPolicy,
      minimumOrderQuantity: productModel.minimumOrderQuantity,
      images: List<String>.from(productModel.images),
      thumbnail: productModel.thumbnail,
    );
  }

  // CopyWith method
  AppProduct copyWith({
    int? id,
    bool? isFavorite,
    String? title,
    String? description,
    String? category,
    double? price,
    double? discountPercentage,
    double? rating,
    int? stock,
    List<String>? tags,
    String? brand,
    String? sku,
    int? weight,
    String? warrantyInformation,
    String? shippingInformation,
    String? availabilityStatus,
    List<Review>? reviews,
    String? returnPolicy,
    int? minimumOrderQuantity,
    List<String>? images,
    String? thumbnail,
  }) {
    return AppProduct(
      id: id ?? this.id,
      isFavorite: isFavorite ?? this.isFavorite,
      title: title ?? this.title,
      description: description ?? this.description,
      category: category ?? this.category,
      price: price ?? this.price,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      rating: rating ?? this.rating,
      stock: stock ?? this.stock,
      tags: tags ?? this.tags,
      brand: brand ?? this.brand,
      sku: sku ?? this.sku,
      weight: weight ?? this.weight,
      warrantyInformation: warrantyInformation ?? this.warrantyInformation,
      shippingInformation: shippingInformation ?? this.shippingInformation,
      availabilityStatus: availabilityStatus ?? this.availabilityStatus,
      reviews: reviews ?? this.reviews,
      returnPolicy: returnPolicy ?? this.returnPolicy,
      minimumOrderQuantity: minimumOrderQuantity ?? this.minimumOrderQuantity,
      images: images ?? this.images,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }
}
