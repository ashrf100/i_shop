import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/cubit/bottom_nav_cubit_cubit.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/widgets/custom_bottom_navbar.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_event.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:i_shop/features/products/presentation/pages/favorites_page.dart';
import 'package:i_shop/features/products/presentation/pages/home_page.dart';
import 'package:i_shop/injection_container.dart' as di;

import '../../../../features/products/presentation/bloc/home/home_bloc.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.sl<BottomNavCubit>(),
        ),
        BlocProvider(
          create: (context) =>
              di.sl<CartBloc>()..add(const CartEvent.loadCart(50)),
        ),
   
      ],
      child: Scaffold(
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
      default:
        return const SizedBox.shrink();
    }
  }
}
