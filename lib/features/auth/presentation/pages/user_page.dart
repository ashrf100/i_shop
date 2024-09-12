import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/routing/app_routes.dart';
import 'package:i_shop/features/auth/domain/entities/app_user.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_event.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_state.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/injection_container.dart' as di;
import 'package:flutter_phoenix/flutter_phoenix.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({
    super.key,
  });

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return state.maybeWhen(
            success: (user) {
              return Center(
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SlideTransition(
                        position: _slideAnimation,
                        child: CircleAvatar(
                          radius: 60.w,
                          backgroundImage: NetworkImage(user!.image),
                          backgroundColor: AppColors.placeholderBaseColor,
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        user.name.toString(),
                        style: AppTextStyles.darkGray16Bold
                            .copyWith(fontSize: 20.sp),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        user.email.toString(),
                        style: AppTextStyles.lightGray14Regular,
                      ),
                      SizedBox(height: 40.h),
                      SlideTransition(
                        position: _slideAnimation,
                        child: ElevatedButton(
                          onPressed: () async {
                            Phoenix.rebirth(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.red,
                            padding: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 40.w,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            elevation: 5,
                          ),
                          child: Text(
                            'Log Out',
                            style: AppTextStyles.white16Bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            orElse: () => SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
