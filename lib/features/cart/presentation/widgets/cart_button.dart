import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0.h,
      child: GestureDetector(
        onTap: () {},
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
                'Pay',
                style: AppTextStyles.white16Bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
