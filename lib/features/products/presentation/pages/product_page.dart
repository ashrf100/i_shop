import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_consts.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
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
    final product = widget.product;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductImageCarousel(appProduct: product),
                  ProductDetails(
                    product: product,
                    quantity: _quantity,
                    onQuantityChanged: (quantity) {
                      setState(() {
                        _quantity = quantity;
                      });
                    },
                  ),
                  ProductDescription(product: product),
                  ProductInfoTable(product: product),
                  ProductReviews(reviews: product.reviews),
                  SpacerWidget.vertical(height: 100.h),
                ],
              ),
            ),
            _AddToCartButton(
              width: 300.w,
              height: 50.h,
              bottom: 16.0.h,
              product: product,
              quantity: _quantity,
            ),
          ],
        ),
      ),
    );
  }
}

class _AddToCartButton extends StatelessWidget {
  final double width;
  final double height;
  final double bottom;
  final AppProduct product;
  final int quantity;

  const _AddToCartButton({
    required this.width,
    required this.height,
    required this.bottom,
    required this.product,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: ElevatedButton(
        onPressed: () {
          final cartBloc = BlocProvider.of<CartBloc>(context);
          cartBloc.add(AddProductEvent(product.id, quantity));

          // Listen to CartBloc state changes for showing snackbars
          cartBloc.stream.listen((state) {
            state.maybeWhen(
              error: (msg) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Error: $msg'),
                    backgroundColor: Colors.red,
                  ),
                );
              },
              loaded: (cart) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Product added to cart successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              orElse: () {},
            );
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkGray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppConsts.addToCartText,
              style: AppTextStyles.white14Regular,
            ),
            SizedBox(width: 8.w),
            Text(
              product.price.toString(),
              style: AppTextStyles.white14Regular,
            ),
          ],
        ),
      ),
    );
  }
}
