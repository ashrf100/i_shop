import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';

class HomeWelcomeWidget extends StatelessWidget {
  const HomeWelcomeWidget({
    super.key,
  });

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
                Flexible(
                  child: Text(
                    "Hello , Welcome",
                    style: AppTextStyles.lightgray14regular,
                  ),
                ),
                Flexible(
                  child: Text(
                    "Ashrf Atia Mostafa ",
                    style: AppTextStyles.black16bold,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.w),
              child: CircleAvatar(
                  radius: 20.r,
                  backgroundImage: const AssetImage(
                    AppAssets.profileImage,
                  )),
            )
          ],
        ));
  }
}
