import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/app_animations.dart';

import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_state.dart';

class LoginButtonWidget extends StatelessWidget {
  final AnimationController _animationController;
  final VoidCallback onTap;

  const LoginButtonWidget({
    super.key,
    required AnimationController animationController,
    required this.onTap,
  }) : _animationController = animationController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        final isLoading = state is LoginLoading;
        final isEnabled = !(state is LoginLoading);

        return ButtonAnimationWidget(
          onTap: isEnabled ? onTap : () {},
          child: ScaleAnimationWidget(
            controller: _animationController,
            child: Container(
              width: double.infinity,
              height: 40.h,
              padding: EdgeInsets.symmetric(vertical: 8.h),
              decoration: BoxDecoration(
                color: isEnabled ? AppColors.darkGray : AppColors.lightGray,
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: isLoading
                    ? SpinKitThreeBounce(
                        color: AppColors.white,
                        size: 20.sp,
                      )
                    : Text(
                        'Sign In',
                        style: AppTextStyles.white16Bold,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
