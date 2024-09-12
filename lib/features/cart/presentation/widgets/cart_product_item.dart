import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/custom_cached_image.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/features/cart/presentation/widgets/quantity_control.dart';

class CartProductItem extends StatelessWidget {
  final AppCartProduct cartProduct;

  const CartProductItem({super.key, required this.cartProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Light shadow for depth
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 5), // Adds smooth elevation
          ),
        ],
      ),
      child: Row(
        children: [
          _ProductImage(imageUrl: cartProduct.thumbnail),
          SizedBox(width: 16.w),
          Expanded(child: _ProductDetails(cartProduct: cartProduct)),
        ],
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  final String imageUrl;

  const _ProductImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      child: CustomCachedImage(imageUrl: imageUrl),
    );
  }
}

class _ProductDetails extends StatelessWidget {
  final AppCartProduct cartProduct;

  const _ProductDetails({required this.cartProduct});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TitleAndSubtitle(cartProduct: cartProduct),
        SizedBox(height: 4.h),
        _PriceAndQuantity(
          price: cartProduct.price,
          quantity: cartProduct.quantity,
          cartProduct: cartProduct,
        ),
      ],
    );
  }
}

class _TitleAndSubtitle extends StatelessWidget {
  final AppCartProduct cartProduct;

  const _TitleAndSubtitle({
    required this.cartProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 180.w,
              child: Text(cartProduct.title,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.darkGray16Bold),
            ),
            Text(cartProduct.discountedPrice.toString(),
                style: AppTextStyles.gray14Regular),
          ],
        ),
        PopupMenuButton<String>(
            icon: const Icon(Icons.more_horiz, color: AppColors.lightGray),
            onSelected: (value) {
              if (value == 'delete') {
                BlocProvider.of<CartBloc>(context).add(
                  UpdateProductQuantityEvent(cartProduct.id, 0),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
                  PopupMenuItem<String>(
                    padding: const EdgeInsets.all(1),
                    height: 10.h,
                    value: 'delete',
                    child: Center(
                        child: Text(
                      'Delete',
                      style: AppTextStyles.darkGray14Regular,
                    )),
                  ),
                ],
            padding: const EdgeInsets.all(1),
            color: AppColors.white),
      ],
    );
  }
}

//  BlocProvider.of<CartBloc>(context).add(
//                 UpdateProductQuantityEvent(cartProduct.id, quantity),
//               );
class _PriceAndQuantity extends StatelessWidget {
  final double price;
  final int quantity;
  final AppCartProduct cartProduct;

  const _PriceAndQuantity({
    required this.price,
    required this.quantity,
    required this.cartProduct,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('\$$price', style: AppTextStyles.darkGray16Bold),
        QuantityControl(cartProduct: cartProduct),
      ],
    );
  }
}
