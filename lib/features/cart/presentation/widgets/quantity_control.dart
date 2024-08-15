import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/features/cart/data/model/cart_request_model.dart';
import 'package:i_shop/features/cart/domain/entities/appcart.dart';
import 'package:i_shop/features/cart/domain/mapper/cart_mapper.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_state.dart';

class QuantityControl extends StatelessWidget {
  final AppCartProduct cartProduct;

  const QuantityControl({required this.cartProduct});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        int quantity = cartProduct.quantity;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildIconButton(
              icon: Icons.remove,
              onPressed: () {
                quantity--;
                BlocProvider.of<CartBloc>(context).add(
                  UpdateProductQuantityEvent(cartProduct.id, quantity),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Text(
                quantity.toString(),
                style: AppTextStyles.darkGray18Regular,
              ),
            ),
            _buildIconButton(
              icon: Icons.add,
              onPressed: () {
                quantity++;
                BlocProvider.of<CartBloc>(context).add(
                  UpdateProductQuantityEvent(cartProduct.id, quantity),
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: 25.h,
      width: 25.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: const CircleBorder(),
          padding: EdgeInsets.zero,
          side: BorderSide(color: AppColors.lightGray, width: 0.5.w),
          backgroundColor: AppColors.white,
        ),
        child: Icon(icon, color: AppColors.darkGray),
      ),
    );
  }
}
