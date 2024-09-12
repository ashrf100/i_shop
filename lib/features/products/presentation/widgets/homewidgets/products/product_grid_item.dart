import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/custom_cached_image.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite_circle_avatar.dart';

import '../../../../../../core/widgets/app_animations.dart';

class ProductGridItem extends StatefulWidget {
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
  _ProductGridItemState createState() => _ProductGridItemState();
}

class _ProductGridItemState extends State<ProductGridItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () => widget.onTap(widget.product),
        child: SlideAnimationWidget(
          controller: _controller,
          beginOffset: const Offset(0, 0.3),
          child: FadeAnimationWidget(
            controller: _controller,
            beginOpacity: 0.0,
            endOpacity: 1.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _ProductImage(
                  product: widget.product,
                  index: widget.index,
                ),
                _ProductDetails(product: widget.product),
              ],
            ),
          ),
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
            color: AppColors.lightGray.withOpacity(0.5),
            imageUrl: product.thumbnail,
            height: index.isEven ? 250.h : 210.h,
            borderRadius: 15.r,
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
            maxLines: 2,
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
