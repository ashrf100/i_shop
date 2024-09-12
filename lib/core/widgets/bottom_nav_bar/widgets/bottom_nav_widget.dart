import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/cubit/bottom_nav_cubit_cubit.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/widgets/custom_bottom_navbar.dart';
import 'package:i_shop/features/auth/presentation/pages/user_page.dart';
import 'package:i_shop/features/products/presentation/pages/favorites_page.dart';
import 'package:i_shop/features/products/presentation/pages/home_page.dart';
import 'package:i_shop/core/widgets/exit_confirmation_dialog.dart';
import 'package:i_shop/injection_container.dart' as di;

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog<bool>(
              context: context,
              builder: (BuildContext context) {
                return ExitConfirmationDialog(
                  onConfirm: () {
                    Navigator.of(context).pop(true);
                  },
                  onCancel: () {},
                );
              },
            ) ??
            false;
      },
      child: Scaffold(
        backgroundColor: AppColors.white,
        extendBodyBehindAppBar: true,
        body: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SafeArea(
              child: BlocBuilder<BottomNavCubit, int>(
                builder: (context, state) {
                  return _getScreenForIndex(state);
                },
              ),
            ),
            Positioned(
              bottom: 16.0.h,
              child: const CustomBottomNavBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getScreenForIndex(int index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const FavoritesPage();
      case 3:
        return const UserInfoScreen();
      default:
        return const SizedBox.shrink();
    }
  }
}
