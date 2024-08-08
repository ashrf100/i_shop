import 'package:flutter/services.dart';
import 'package:i_shop/core/const/app_colors.dart';

void configureSystemUI() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        systemNavigationBarColor: AppColors.white,
        systemNavigationBarDividerColor: AppColors.white),
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}
