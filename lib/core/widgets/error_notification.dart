import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i_shop/core/const/app_assets.dart';
import 'package:i_shop/core/const/app_text_styles.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_bloc.dart';
import 'package:i_shop/features/products/presentation/bloc/home/home_event.dart';
import 'package:lottie/lottie.dart';

class ErrorNotification extends StatelessWidget {
  final String message;
  final String? searchText;

  const ErrorNotification({
    Key? key,
    required this.message,
    this.searchText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(seconds: 1),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            children: [
              Flexible(
                child: Lottie.asset(AppAssets.errorLottie),
              ),
              SizedBox(height: 16.0.h),
              Text(
                message,
                style: AppTextStyles.gray16regular,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24.0.h),
              if (searchText == null)
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<HomeBloc>(context)
                        .add(const HomeEvent.init());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Retry'),
                ),
              SizedBox(height: 110.0.w),
            ],
          ),
        ),
      ),
    );
  }
}
