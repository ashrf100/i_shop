import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/const/app_consts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SpinKitCircle(color: AppColors.white, size: 75.0.sp),
          SizedBox(width: 16.0.w),
          Text(
            AppConsts.loadingMessage,
            style: AppTextStyles.white12Regular,
          ),
        ],
      ),
    );
  }
}
