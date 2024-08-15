class AppCart {
  final int id;
  final List<AppCartProduct> products;
  final double total;
  final double discountedTotal;
  final int userId;
  final int totalProducts;
  final int totalQuantity;
  final bool isDeleted;
  final String? deletedOn;

  AppCart({
    required this.id,
    required this.products,
    required this.total,
    required this.discountedTotal,
    required this.userId,
    required this.totalProducts,
    required this.totalQuantity,
    this.isDeleted = false,
    this.deletedOn,
  });

  AppCart copyWith({
    int? id,
    List<AppCartProduct>? products,
    double? total,
    double? discountedTotal,
    int? userId,
    int? totalProducts,
    int? totalQuantity,
    bool? isDeleted,
    String? deletedOn,
  }) {
    return AppCart(
      id: id ?? this.id,
      products: products ?? this.products,
      total: total ?? this.total,
      discountedTotal: discountedTotal ?? this.discountedTotal,
      userId: userId ?? this.userId,
      totalProducts: totalProducts ?? this.totalProducts,
      totalQuantity: totalQuantity ?? this.totalQuantity,
      isDeleted: isDeleted ?? this.isDeleted,
      deletedOn: deletedOn ?? this.deletedOn,
    );
  }

  AppCart merge(AppCart newCart) {
    // Merge products
    final mergedProducts = List<AppCartProduct>.from(products);

    for (var newProduct in newCart.products) {
      final index = mergedProducts.indexWhere((p) => p.id == newProduct.id);
      if (index != -1) {
        // Update existing product
        mergedProducts[index] = mergedProducts[index].copyWith(
          quantity: mergedProducts[index].quantity + newProduct.quantity,
          total: mergedProducts[index].total + newProduct.total,
        );
      } else {
        // Add new product
        mergedProducts.add(newProduct);
      }
    }

    // Update totals
    final newTotal = mergedProducts.fold(0.0, (sum, p) => sum + p.total);
    final newDiscountedTotal =
        mergedProducts.fold(0.0, (sum, p) => sum + p.discountedPrice);
    final newTotalProducts = mergedProducts.length;
    final newTotalQuantity =
        mergedProducts.fold(0, (sum, p) => sum + p.quantity);

    return copyWith(
      products: mergedProducts,
      total: newTotal,
      discountedTotal: newDiscountedTotal,
      totalProducts: newTotalProducts,
      totalQuantity: newTotalQuantity,
    );
  }
}

class AppCartProduct {
  final int id;
  final String title;
  final double price;
  final int quantity;
  final double total;
  final double discountPercentage;
  final double discountedPrice;
  final String thumbnail;

  AppCartProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.total,
    required this.discountPercentage,
    required this.discountedPrice,
    required this.thumbnail,
  });
  AppCartProduct copyWith({
    int? id,
    String? title,
    double? price,
    int? quantity,
    double? total,
    double? discountPercentage,
    double? discountedPrice,
    String? thumbnail,
  }) {
    return AppCartProduct(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      total: total ?? this.total,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountedPrice: discountedPrice ?? this.discountedPrice,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }
}
