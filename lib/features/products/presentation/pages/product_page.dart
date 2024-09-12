import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_consts.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_state.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_description.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_details.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_image_carousel.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_info_table.dart';
import 'package:i_shop/features/products/presentation/widgets/product_page/product_reviews.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  final AppProduct product;
  final int quantity;

  const _AddToCartButton({
    required this.product,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0.h,
      child: Container(
        width: 300.w,
        height: 45.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: BlocConsumer<CartBloc, CartState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (msg) {
                Alert(
                  style: AlertStyle(backgroundColor: AppColors.white),
                  context: context,
                  type: AlertType.error,
                  title: "Error",
                  desc: "Error adding product to cart!",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "OK",
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 207, 207),
                            fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      width: 120,
                    )
                  ],
                ).show();
              },
              loaded: (cart) {
                Alert(
                  style: AlertStyle(backgroundColor: AppColors.white),
                  context: context,
                  type: AlertType.success,
                  title: "Success",
                  desc: "${product.title} \n added to Cart!",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "OK",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      width: 120,
                    )
                  ],
                ).show();
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            final isLoading = state is CartLoadingState;

            return ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () {
                      final cartBloc = BlocProvider.of<CartBloc>(context);
                      cartBloc.add(AddProductEvent(product.id, quantity));
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isLoading ? AppColors.lightGray : AppColors.darkGray,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.r),
                ),
                padding: EdgeInsets.zero,
              ),
              child: state.maybeWhen(
                loading: () => SpinKitThreeBounce(
                  color: AppColors.white,
                  size: 20.sp,
                ),
                orElse: () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add_shopping_cart, color: Colors.white),
                    SizedBox(width: 8.w),
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
          },
        ),
      ),
    );
  }
}
