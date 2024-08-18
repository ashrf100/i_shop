import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/routing/route_generator.dart';
import 'package:i_shop/core/widgets/bottom_nav_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:i_shop/features/cart/presentation/bloc/cart_event.dart';
import 'package:i_shop/injection_container.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';

class IShop extends StatelessWidget {
  IShop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) => BlocProvider(
        create: (context) => di.sl<CartBloc>()..add(CartEvent.loadCart(50)),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: WelcomePage(),
          onGenerateRoute: RouteGenerator.generateRoute,
        ),
      ),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(AppAssets.logoImage),
            Text(
              'Your one-stop shop for everything.',
              style: AppTextStyles.gray16Regular,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40.h),
            _buildSocialButton(
              icon: AppAssets.google,
              label: 'Google',
              onTap: () {},
              context: context,
            ),
            SizedBox(height: 20.h),
            _buildSocialButton(
              icon: AppAssets.facebook,
              label: 'Facebook',
              onTap: () {},
              context: context,
            ),
            SizedBox(height: 20.h),
            _buildSocialButton(
              icon: AppAssets.apple,
              label: 'Apple',
              onTap: () {},
              context: context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton({
    required String icon,
    required String label,
    required Function onTap,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 3 / 4 * MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          color: AppColors.darkGray,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.white,
              child: Center(
                child: Image.asset(icon),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
                child: Text('Log in with $label',
                    style: AppTextStyles.white14Regular)),
          ],
        ),
      ),
    );
  }
}
