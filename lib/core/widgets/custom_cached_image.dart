import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_consts.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedImage extends StatefulWidget {
  final String imageUrl;
  final double height;
  final double borderRadius;

  const CustomCachedImage({
    super.key,
    required this.imageUrl,
    this.height = 200.0,
    this.borderRadius = 10.0,
  });

  @override
  State<CustomCachedImage> createState() => _CustomCachedImageState();
}

class _CustomCachedImageState extends State<CustomCachedImage> {
  bool _shouldReload = false;

  @override
  Widget build(BuildContext context) {
    final imageKey =
        ValueKey(widget.imageUrl + (_shouldReload ? '-reload' : ''));

    return CachedNetworkImage(
      key: imageKey,
      imageUrl: widget.imageUrl,
      imageBuilder: (context, imageProvider) => _ImageContainer(
        imageProvider: imageProvider,
        height: widget.height,
        borderRadius: widget.borderRadius,
      ),
      placeholder: (context, url) => _Placeholder(
        height: widget.height,
        borderRadius: widget.borderRadius,
      ),
      errorWidget: (context, url, error) => _ErrorWidget(
        onRetry: () {
          setState(() {
            _shouldReload = !_shouldReload;
          });
        },
      ),
    );
  }
}

class _ImageContainer extends StatelessWidget {
  final ImageProvider imageProvider;
  final double height;
  final double borderRadius;

  const _ImageContainer({
    required this.imageProvider,
    required this.height,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Placeholder extends StatelessWidget {
  final double height;
  final double borderRadius;

  const _Placeholder({
    required this.height,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.placeholderBaseColor,
      highlightColor: AppColors.placeholderHighlightColor,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius.r),
        ),
      ),
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;

  const _ErrorWidget({
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(AppConsts.failedToLoadText, style: AppTextStyles.white16Bold),
          ElevatedButton(
            onPressed: onRetry,
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.white),
            child: Text(
              AppConsts.retryText,
              style: AppTextStyles.darkGray14Regular,
            ),
          ),
        ],
      ),
    );
  }
}
