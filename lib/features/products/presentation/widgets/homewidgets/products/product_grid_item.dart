import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/custom_cached_image.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite_circle_avatar.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({
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
            _ProductImage(
              product: product,
              index: index,
            ),
            _ProductDetails(product: product),
          ],
        ),
      ),
    );
  }
}

class _ProductImage extends StatelessWidget {
  const _ProductImage({
    required this.product,
    required this.index,
  });

  final AppProduct product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: index.isEven ? 250.h : 210.h,
          child: CustomCachedImage(
            imageUrl: product.thumbnail,
            height: index.isEven ? 250.h : 210.h,
          ),
        ),
        Positioned(
          top: 12.h,
          right: 12.r,
          child: FavoriteCircleAvatar(appProduct: product),
        ),
      ],
    );
  }
}

class _ProductDetails extends StatelessWidget {
  const _ProductDetails({required this.product});

  final AppProduct product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: AppTextStyles.darkGray16Bold,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            product.category,
            style: AppTextStyles.lightGray12Normal,
          ),
          _ProductPriceAndRating(product: product),
        ],
      ),
    );
  }
}

class _ProductPriceAndRating extends StatelessWidget {
  const _ProductPriceAndRating({required this.product});

  final AppProduct product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${product.price.toStringAsFixed(2)}',
          style: AppTextStyles.darkGray16Bold,
        ),
        Row(
          children: [
            Icon(Icons.star, color: Colors.yellow, size: 14.sp),
            SpacerWidget.horizontal(width: 4.w),
            Text(
              product.rating.toStringAsFixed(1),
              style: AppTextStyles.darkGray14Regular,
            ),
          ],
        ),
      ],
    );
  }
}
