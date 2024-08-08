import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double borderRadius;
  final bool showShimmer;
  final bool showErrorIcon;

  const CustomCachedImage({
    Key? key,
    required this.imageUrl,
    this.height = 200.0,
    this.borderRadius = 10.0,
    this.showShimmer = true,
    this.showErrorIcon = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              offset: Offset(0, 3), // Shadow position
              blurRadius: 1, // Shadow blur radius
              spreadRadius: 0.5, // Spread of the shadow
            ),
          ],
        ),
      ),
      placeholder: (context, url) => showShimmer
          ? Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            )
          : Container(
              height: height,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
      errorWidget: (context, url, error) => showErrorIcon
          ? const Icon(Icons.error)
          : Container(
              height: height,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
    );
  }
}
