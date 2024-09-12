import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';

class AppTextStyles {
  // Heading styles
  static TextStyle darkGray20Bold = TextStyle(
    color: AppColors.darkGray,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    height: 1.h,
  );

  static TextStyle darkGray16Bold = TextStyle(
    color: AppColors.darkGray,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  // Body text styles
  static TextStyle darkGray14Regular = TextStyle(
    color: AppColors.darkGray,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle darkGray18Regular = TextStyle(
    color: AppColors.darkGray,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle gray16Regular = TextStyle(
    color: AppColors.gray,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  // Subtext styles
  static TextStyle lightGray12Normal = TextStyle(
    color: AppColors.lightGray.withOpacity(0.8),
    fontSize: 12.sp,
    fontWeight: FontWeight.normal,
  );
  static TextStyle white16Bold = TextStyle(
    color: AppColors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle white14Regular = TextStyle(
    color: AppColors.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle white12Regular = TextStyle(
    color: AppColors.white,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle white10Regular = TextStyle(
    color: AppColors.white,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  // Small text styles
  static TextStyle white8Normal = TextStyle(
    color: AppColors.white,
    fontSize: 8.sp,
    fontWeight: FontWeight.normal,
  );

  // Additional styles
  static TextStyle lightGray14Regular = TextStyle(
    color: AppColors.lightGray,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle gray14Regular = TextStyle(
    color: AppColors.gray,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}
