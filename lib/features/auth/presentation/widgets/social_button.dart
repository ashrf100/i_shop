import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/app_animations.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String label;
  final Function onTap;

  const SocialButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonAnimationWidget(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 140.w,
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: const Offset(0, 4),
              blurRadius: 4.r,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.white,
              radius: 15.r,
              child: Padding(
                padding: EdgeInsets.all(5.0.w),
                child: Image.asset(
                  icon,
                ),
              ),
            ),
            Text(label,
                style: AppTextStyles.white16Bold
                    .copyWith(fontWeight: FontWeight.w400)),
            SizedBox(
              width: 10.w,
            )
          ],
        ),
      ),
    );
  }
}
