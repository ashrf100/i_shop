import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/widgets/spacer_widget.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/categories/home_categories_list.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/search%20_sort/home_search_and_setting_widget.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/products/home_straggle_grid_helper.dart';
import 'package:i_shop/features/products/presentation/widgets/homewidgets/home_welcome_widget.dart';
import 'package:i_shop/injection_container.dart' as di;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<HomeBloc>()..add(const HomeEvent.init()),
      child: Scaffold(
          body: SafeArea(
              child: Container(
                  color: AppColors.white,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SpacerWidget.vertical(height: 5.h),
                          const HomeWelcomeWidget(),
                          SpacerWidget.vertical(height: 15.h),
                          const HomeSearchAndSettingWidget(),
                          SpacerWidget.vertical(height: 15.h),
                          const CategoriesHorizontalList(),
                          SpacerWidget.vertical(height: 5.h),
                          const Expanded(child: HomeStaggeredGridHelper()),
                        ],
                      ),
                      buildBackGround(),
                    ],
                  )))),
    );
  }
}

IgnorePointer buildBackGround() {
  return IgnorePointer(
    child: ClipRect(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.white.withOpacity(0.1),
              Colors.white.withOpacity(0.6),
              Colors.white.withOpacity(0.9),
            ],
            stops: const [0.0, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0],
          ),
        ),
      ),
    ),
  );
}
