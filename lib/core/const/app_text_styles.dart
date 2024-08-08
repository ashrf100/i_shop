import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';

class AppTextStyles {
  static TextStyle white8normal = TextStyle(
      color: AppColors.white, fontWeight: FontWeight.normal, fontSize: 8.sp);

  static TextStyle lightgray12normal = TextStyle(
    color: AppColors.lightGray.withOpacity(0.8),
    fontWeight: FontWeight.normal,
    fontSize: 12.sp,
  );

  static TextStyle black16bold = TextStyle(
      color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.bold);

  static TextStyle lightgray14regular = TextStyle(
      color: AppColors.lightGray, fontSize: 14.sp, fontWeight: FontWeight.w400);

  static TextStyle white12regular = TextStyle(
      color: AppColors.white, fontSize: 12.sp, fontWeight: FontWeight.w400);
  static TextStyle darkgray12regular = TextStyle(
      color: AppColors.darkGray, fontSize: 12.sp, fontWeight: FontWeight.w400);

  static TextStyle darkGray16bold = TextStyle(
      color: AppColors.darkGray,
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      height: 2.h);

  static TextStyle darkGray18bold = TextStyle(
      color: AppColors.darkGray,
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      height: 1.h);
  static TextStyle darkgray14regular = TextStyle(
      color: AppColors.darkGray, fontSize: 14.sp, fontWeight: FontWeight.w400);
  static TextStyle gray16regular = TextStyle(
      color: AppColors.gray, fontSize: 16.sp, fontWeight: FontWeight.w400);
}
