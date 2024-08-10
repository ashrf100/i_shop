import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/search%20_sort/custom_search_field.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/search%20_sort/setting_button.dart';

class HomeSearchAndSettingWidget extends StatelessWidget {
  const HomeSearchAndSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 5, child: CustomSearchField()),
          Expanded(child: SettingButton()),
        ],
      ),
    );
  }
}
