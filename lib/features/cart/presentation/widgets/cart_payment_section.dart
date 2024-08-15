import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';

class PaymentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shopping Information",
            style: AppTextStyles.darkGray16Bold,
          ),
          SizedBox(height: 16.h),
          Container(
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            decoration: BoxDecoration(
              color: AppColors.lightGray.withOpacity(0.3),
              borderRadius: BorderRadius.circular(8.0.r),
            ),
            child: Row(
              children: [
                Icon(Icons.credit_card, size: 32.r, color: Colors.blue),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'VISA',
                        style: AppTextStyles.darkGray16Bold,
                      ),
                      Text(
                        '**** **** **** 2143',
                        style: AppTextStyles.gray16Regular,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 32.r,
                  color: AppColors.lightGray,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
