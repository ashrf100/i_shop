import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/main.dart';
import 'package:badges/badges.dart' as badges;

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;
  final int _cartItemCount = 5;

  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SafeArea(child: _screens[_selectedIndex]),
          Positioned(
            bottom: 16.0.h,
            child: CustomBottomNavBar(
              selectedIndex: _selectedIndex,
              onIconTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              cartItemCount: _cartItemCount,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final void Function(int) onIconTap;
  final int selectedIndex;
  final int cartItemCount;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onIconTap,
    required this.cartItemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 60.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home_outlined, Icons.home, 0),
          _buildNavItemWithBadge(Icons.shopping_cart_outlined,
              Icons.shopping_cart, 1, cartItemCount),
          _buildNavItem(Icons.favorite_outline, Icons.favorite, 2),
          _buildNavItem(Icons.person_outline, Icons.person, 3),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, IconData activeIcon, int index) {
    return GestureDetector(
      onTap: () => onIconTap(index),
      child: CircleAvatar(
        backgroundColor: AppColors.gray,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 2.h),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              child: Icon(
                index == selectedIndex ? activeIcon : icon,
                key: ValueKey<int>(index),
                color: index == selectedIndex
                    ? AppColors.white
                    : AppColors.lightGray,
              ),
            ),
            SizedBox(height: 2.h),
            CircleAvatar(
              radius: 1.5.r,
              backgroundColor:
                  index == selectedIndex ? AppColors.white : AppColors.gray,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItemWithBadge(
      IconData icon, IconData activeIcon, int index, int count) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -4, end: 1.w),
      showBadge: count > 0,
      badgeContent: Padding(
        padding: EdgeInsets.zero,
        child: Text(
          count.toString(),
          style: AppTextStyles.white8normal,
        ),
      ),
      badgeStyle: badges.BadgeStyle(
        shape: badges.BadgeShape.circle,
        badgeColor: AppColors.red.withOpacity(0.8),
        elevation: 1,
        padding: EdgeInsets.all(2.5.w),
      ),
      child: _buildNavItem(icon, activeIcon, index),
    );
  }
}
