import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/routing/app_routes.dart';
import 'package:i_shop/core/widgets/bottom_nav_bar/cubit/bottom_nav_cubit_cubit.dart';
import 'package:badges/badges.dart' as badges;
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_state.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/Favorite/favorite_state.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 45.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const _NavItem(
              icon: Icons.home_outlined, activeIcon: Icons.home, index: 0),
          BlocBuilder<FavoritesBloc, FavoritesState>(
            builder: (context, state) {
              final favoritesCount = state.maybeWhen(
                loaded: (products) => products.length,
                orElse: () => 0,
              );
              return _NavItemWithBadge(
                icon: Icons.favorite_border,
                activeIcon: Icons.favorite,
                index: 1,
                count: favoritesCount,
              );
            },
          ),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              final cartCount = state.maybeWhen(
                loaded: (cart) => cart.products.length,
                orElse: () => 0,
              );

              return _CartIconButton(count: cartCount);
            },
          ),
          const _NavItem(
              icon: Icons.person_outline, activeIcon: Icons.person, index: 3),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final IconData activeIcon;
  final int index;

  const _NavItem(
      {required this.icon, required this.activeIcon, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<BottomNavCubit>().updateIndex(index),
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (context, selectedIndex) {
          final isSelected = selectedIndex == index;

          return AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? AppColors.gray : Colors.transparent,
            ),
            padding: EdgeInsets.all(8.w),
            child: AnimatedScale(
              scale: isSelected ? 1.2 : 1.0,
              duration: const Duration(milliseconds: 300),
              child: AnimatedOpacity(
                opacity: isSelected ? 1.0 : 0.6,
                duration: const Duration(milliseconds: 300),
                child: Icon(
                  isSelected ? activeIcon : icon,
                  color: isSelected ? AppColors.white : AppColors.lightGray,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _NavItemWithBadge extends StatelessWidget {
  final IconData icon;
  final IconData activeIcon;
  final int index;
  final int count;

  const _NavItemWithBadge({
    required this.icon,
    required this.activeIcon,
    required this.index,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -4.h, end: 1.w),
      showBadge: count > 0,
      badgeContent: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          final rotationAnimation =
              Tween<double>(begin: 0, end: 1).animate(animation);
          return RotationTransition(turns: rotationAnimation, child: child);
        },
        child: Padding(
          key: ValueKey<int>(count),
          padding: EdgeInsets.all(1.2.w),
          child: Text(count.toString(), style: AppTextStyles.white10Regular),
        ),
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        badgeColor: AppColors.red.withOpacity(0.8),
        elevation: 1,
        padding: EdgeInsets.all(2.5.w),
      ),
      child: _NavItem(
        icon: icon,
        activeIcon: activeIcon,
        index: index,
      ),
    );
  }
}

class _CartIconButton extends StatelessWidget {
  final int count;

  const _CartIconButton({required this.count});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -4.h, end: 1.w),
      showBadge: count > 0,
      badgeContent: Padding(
        padding: EdgeInsets.all(0.9.w),
        child: Text(count.toString(), style: AppTextStyles.white10Regular),
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        badgeColor: AppColors.red.withOpacity(0.8),
        elevation: 1,
        padding: EdgeInsets.all(2.5.w),
      ),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, AppRoutes.cart),
        child: Opacity(
          opacity: 0.6,
          child: Transform.scale(
            scale: 1.0,
            child: const CircleAvatar(
              backgroundColor: AppColors.gray,
              child: Icon(Icons.shopping_cart_outlined,
                  color: AppColors.lightGray),
            ),
          ),
        ),
      ),
    );
  }
}
