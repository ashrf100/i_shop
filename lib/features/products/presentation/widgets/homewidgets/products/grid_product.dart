import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/widgets/custom_cached_image.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite_circle_avatar.dart'; // Import your text styles

import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:shimmer/shimmer.dart'; // Import the AppProduct class

class GridProduct extends StatelessWidget {
  const GridProduct({
    super.key,
    required this.product,
    required this.index,
    required this.onTap,
  });

  final AppProduct product;
  final int index;
  final void Function(AppProduct product) onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
          onTap: () => onTap(product),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: index % 2 == 0 ? 250.h : 220.h,
                    child: CustomCachedImage(
                      imageUrl: product.thumbnail,
                      height: index % 2 == 0 ? 250.h : 220.h,
                    ),
                  ),
                  Positioned(
                    top: 8.h,
                    right: 8.r,
                    child: const FaverotCircleAvatar(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: AppTextStyles.darkGray16bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      product.category,
                      style: AppTextStyles.lightgray12normal,
                    ),
                    SpacerWidget.vertical(height: 4.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: AppTextStyles.darkGray16bold,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 14.sp),
                                SpacerWidget.horizontal(width: 4.w),
                                Text(
                                  product.rating.toStringAsFixed(1),
                                  style: AppTextStyles.darkgray14regular,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class GridProductShimmer extends StatelessWidget {
  const GridProductShimmer({Key? key}) : super(key: key);

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
            height: 250.h,
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
