import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:i_shop/core/routing/app_routes.dart';

import 'package:i_shop/core/widgets/app_animations.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_bloc.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_event.dart';
import 'package:i_shop/features/auth/presentation/bloc/login_state.dart';
import 'package:i_shop/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:i_shop/features/auth/presentation/widgets/link_message_widget.dart';
import 'package:i_shop/features/auth/presentation/widgets/login_button_widget.dart';

class LoginFormWidget extends StatefulWidget {
  final AnimationController _animationController;

  const LoginFormWidget({
    super.key,
    required AnimationController animationController,
  }) : _animationController = animationController;

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: 'emilys');
  final _passwordController = TextEditingController(text: 'emilyspass');
  String? _emailError, _passwordError;

  _validateAndSubmit() {
    setState(() {
      _emailError = _validateInput(_emailController.text, 'email');
      _passwordError = _validateInput(_passwordController.text, 'password');
    });

    if (_emailError == null && _passwordError == null) {
      BlocProvider.of<LoginBloc>(context).add(
        LoginEvent.loginRequested(
          username: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  String? _validateInput(String value, String inputType) {
    if (value.isEmpty) {
      return '$inputType is required';
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (_) {
            widget._animationController
                .forward()
                .then((_) => widget._animationController.reverse())
                .then((_) =>
                    Navigator.pushReplacementNamed(context, AppRoutes.main));
          },
          error: (e) {
            setState(() {
              _passwordError = e;
            });
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return SlideAnimationWidget(
          controller: widget._animationController,
          child: AnimationConfiguration.synchronized(
            child: FadeInAnimation(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: _emailController,
                      labelText: 'Email',
                      errorText: _emailError,
                    ),
                    SizedBox(height: 20.h),
                    CustomTextField(
                      controller: _passwordController,
                      labelText: 'Password',
                      obscureText: true,
                      errorText: _passwordError,
                    ),
                    SizedBox(height: 20.h),
                    const LinkMessageWidget(),
                    SizedBox(height: 20.h),
                    LoginButtonWidget(
                      animationController: widget._animationController,
                      onTap: _validateAndSubmit,
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
