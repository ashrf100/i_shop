import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildIconButton(
            icon: Icons.arrow_back_ios_new,
            onPressed: () {},
          ),
          Text(
            'Checkout',
            style: AppTextStyles.darkGray18Regular,
          ),
          _buildIconButton(
            icon: Icons.more_horiz,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton(
      {required IconData icon, required VoidCallback onPressed}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.lightGray.withOpacity(0.2),
        ),
        child: Icon(
          icon,
          color: AppColors.darkGray,
          size: 24.sp,
        ),
      ),
    );
  }
}
