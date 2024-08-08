import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_description.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_details.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_image_carousel.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_info_table.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_reviews.dart';

class ProductPage extends StatefulWidget {
  final AppProduct product;

  const ProductPage({super.key, required this.product});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    final product = widget.product; // Access AppProduct directly

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductImageCarousel(
                        images: product.images), // Use product.images
                    ProductDetails(
                      product: product,
                      quantity: _quantity,
                      onQuantityChanged: (quantity) {
                        setState(() {
                          _quantity = quantity;
                        });
                      },
                    ),
                    ProductDescription(product: product), // Use product
                    ProductInfoTable(product: product), // Use product
                    ProductReviews(
                        reviews: product.reviews), // Use product.reviews
                    SpacerWidget.vertical(height: 100.h),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16.0.h,
              child: Container(
                width: 300.w,
                height: 50.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.darkGray,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add to Cart  |  ',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$${product.price.toStringAsFixed(2)}', // Display product price
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
