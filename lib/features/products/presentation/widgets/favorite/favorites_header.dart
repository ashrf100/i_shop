import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';

class FavoritesHeader extends StatelessWidget {
  const FavoritesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpacerWidget.vertical(height: 5.h),
              Text(
                "Your Favorite Products",
                style: AppTextStyles.lightGray14Regular,
              ),
              Text(
                "Here's what you love!",
                style: AppTextStyles.darkGray16Bold,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 20.r,
              backgroundImage: const AssetImage(AppAssets.favoriteImage),
            ),
          ),
        ],
      ),
    );
  }
}
