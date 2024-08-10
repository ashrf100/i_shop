import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/widgets/custom_cached_image.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite_circle_avatar.dart';

import 'package:i_shop/features/products/domain/entities/app_product.dart';

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
                    height: index % 2 == 0 ? 250.h : 210.h,
                    child: CustomCachedImage(
                      imageUrl: product.thumbnail,
                      height: index % 2 == 0 ? 250.h : 210.h,
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
