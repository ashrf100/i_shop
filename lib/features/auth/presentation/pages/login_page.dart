import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/const/app_colors.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/core/widgets/app_animations.dart';
import 'package:i_shop/core/widgets/exit_confirmation_dialog.dart';
import 'package:i_shop/features/auth/presentation/widgets/login_form_widget.dart';
import 'package:i_shop/features/auth/presentation/widgets/social_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_event.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_state.dart';
import 'package:i_shop/injection_container.dart' as di;

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..forward();
  }

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
        body: SafeArea(
          child: BlocProvider(
            create: (context) => di.sl<LoginBloc>(),
            child: BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                final isLoading = state is LoginLoading;
                return SingleChildScrollView(
                  child: FadeAnimationWidget(
                    controller: _animationController,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _LoginLogoWidget(
                              animationController: _animationController),
                          _LoginWelcomeWidget(
                              animationController: _animationController),
                          SizedBox(height: 20.h),
                          LoginFormWidget(
                              animationController: _animationController),
                          SizedBox(height: 10.h),
                          const LoginDivederWidget(),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SocialButton(
                                icon: AppAssets.google,
                                label: 'Google',
                                onTap: isLoading
                                    ? () {}
                                    : () => _signInWithGoogle(context),
                              ),
                              SizedBox(height: 40.h),
                              SocialButton(
                                icon: AppAssets.facebook,
                                label: 'Facebook',
                                onTap: isLoading
                                    ? () {}
                                    : () => _signInWithFacebook(context),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _signInWithGoogle(BuildContext context) {
    context.read<LoginBloc>().add(const GoogleLoginRequested());
  }

  void _signInWithFacebook(BuildContext context) {
    context.read<LoginBloc>().add(const FacebookLoginRequested());
  }
}

class LoginDivederWidget extends StatelessWidget {
  const LoginDivederWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Expanded(
              child: Divider(thickness: 1, color: AppColors.lightGray)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Text(
              'Or login using social accounts',
              style: AppTextStyles.darkGray14Regular,
            ),
          ),
          const Expanded(
              child: Divider(thickness: 1, color: AppColors.lightGray)),
        ],
      ),
    );
  }
}

class _LoginWelcomeWidget extends StatelessWidget {
  const _LoginWelcomeWidget({
    required AnimationController animationController,
  }) : _animationController = animationController;

  final AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return SlideAnimationWidget(
      controller: _animationController,
      child: AnimationConfiguration.synchronized(
        child: FadeInAnimation(
          child: Text(
            'Your one-stop shop for everything.',
            style: AppTextStyles.gray16Regular,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class _LoginLogoWidget extends StatelessWidget {
  const _LoginLogoWidget({
    required AnimationController animationController,
  }) : _animationController = animationController;

  final AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    return SlideAnimationWidget(
      controller: _animationController,
      child: AnimationConfiguration.synchronized(
        child: FadeInAnimation(
          child: Image.asset(
            AppAssets.logoImage,
            height: 250.h,
          ),
        ),
      ),
    );
  }
}
