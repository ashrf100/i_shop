import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
          (index) => GridProductShimmer(
            index: index,
          ),
        ),
      ),
    );
  }
}

class GridProductShimmer extends StatelessWidget {
  const GridProductShimmer({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15.r),
            ),
            height: index % 2 == 0 ? 250.h : 210.h,
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.all(8.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16.h,
                  width: 120.w,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 4.h),
                Container(
                  height: 14.h,
                  width: 80.w,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 16.h,
                      width: 60.w,
                      color: Colors.grey[300],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 14.h,
                          width: 20.w,
                          color: Colors.grey[300],
                        ),
                        SizedBox(width: 4.w),
                        Container(
                          height: 14.h,
                          width: 30.w,
                          color: Colors.grey[300],
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
