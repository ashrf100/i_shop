import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0),
      margin: EdgeInsets.only(right: 8.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
            color: AppColors.lightGray.withOpacity(0.5), width: 0.5.w),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.search, color: AppColors.lightGray.withOpacity(0.5)),
          SpacerWidget.horizontal(width: 8.w),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Products ..',
                hintStyle: AppTextStyles.lightgray12normal,
                border: InputBorder.none,
              ),
              onSubmitted: (searchText) {
                BlocProvider.of<HomeBloc>(context)
                    .add(HomeEvent.productsBySearch(searchText));
              },
            ),
          ),
        ],
      ),
    );
  }
}
