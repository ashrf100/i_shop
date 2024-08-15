import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';

import 'package:i_shop/features/products/presentation/widgets/homewidgets/search%20_sort/sort_options_bottom_sheet.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showSortOptionsBottomSheet(context);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 35.h,
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: const Icon(Icons.sort_rounded, color: Colors.white),
      ),
    );
  }

  void _showSortOptionsBottomSheet(BuildContext context) {
    final homeBloc = BlocProvider.of<HomeBloc>(context);

    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.white,
      builder: (BuildContext context) {
        return BlocProvider.value(
          value: homeBloc,
          child: const SortOptionsBottomSheet(),
        );
      },
    );
  }
}
