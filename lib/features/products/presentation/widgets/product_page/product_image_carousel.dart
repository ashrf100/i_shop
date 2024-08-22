import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/widgets/custom_cached_image.dart';
import 'package:i_shop/features/products/domain/entities/app_product.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:i_shop/features/products/presentation/widgets/favorite_circle_avatar.dart';

class ProductImageCarousel extends StatefulWidget {
  final AppProduct appProduct;

  const ProductImageCarousel({super.key, required this.appProduct});

  @override
  _ProductImageCarouselState createState() => _ProductImageCarouselState();
}

class _ProductImageCarouselState extends State<ProductImageCarousel> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      padding: EdgeInsets.all(16.0.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: widget.appProduct.images.length,
              itemBuilder: (context, index) {
                return CustomCachedImage(
                  imageUrl: widget.appProduct.images[index],
                );
              },
            ),
            Positioned(
              bottom: 10.h,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: widget.appProduct.images.length,
                  effect: WormEffect(
                    dotColor: AppColors.gray.withOpacity(0.3),
                    activeDotColor: AppColors.darkGray,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8.h,
              right: 10.r,
              child: FavoriteCircleAvatar(
                appProduct: widget.appProduct,
              ),
            ),
            Positioned(
              top: 8.h,
              left: 10.r,
              child: const CircleAvatar(
                backgroundColor: AppColors.white,
                child: BackButton(color: AppColors.darkGray),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
