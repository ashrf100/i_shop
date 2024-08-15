import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class LoadingProductsGrid extends StatelessWidget {
  const LoadingProductsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: StaggeredGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 15.0.w,
        children: List.generate(
          5,
          (index) => GridProductShimmer(index: index),
        ),
      ),
    );
  }
}

class GridProductShimmer extends StatelessWidget {
  const GridProductShimmer({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.placeholderBaseColor,
      highlightColor: AppColors.placeholderHighlightColor.withOpacity(0.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.placeholderHighlightColor,
              borderRadius: BorderRadius.circular(15.0.r),
            ),
            height: index % 2 == 0 ? 250.0.h : 210.0.h,
          ),
          SizedBox(height: 8.0.h),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16.0.h,
                  width: 120.0.w,
                  color: AppColors.placeholderHighlightColor,
                ),
                SizedBox(height: 4.0.h),
                Container(
                  height: 14.0.h,
                  width: 80.0.w,
                  color: AppColors.placeholderHighlightColor,
                ),
                SizedBox(height: 8.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 16.0.h,
                      width: 60.0.w,
                      color: AppColors.placeholderHighlightColor,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 14.0.h,
                          width: 20.0.w,
                          color: AppColors.placeholderHighlightColor,
                        ),
                        SizedBox(width: 4.0.w),
                        Container(
                          height: 14.0.h,
                          width: 30.0.w,
                          color: AppColors.placeholderHighlightColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
